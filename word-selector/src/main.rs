use std::collections::HashSet;
use std::fs::File;
use std::fs::OpenOptions;
use std::io::StdoutLock;
use std::io::{stdin, stdout, Read, Write};
use std::io::{BufRead, BufReader};
use termion::event::Key;
use termion::input::TermRead;
use termion::raw::IntoRawMode;
use termion::raw::RawTerminal;
use termion::AsyncReader;

mod blacklist;
use blacklist::*;

mod whitelist;
use whitelist::*;

fn main() {
    // Read the input from the Tagger program
    let input = read_input_tags();

    let mut stdin = termion::async_stdin();
    let stdout = stdout();
    // Since we have turned stdout into raw mode we need to print \r\n
    // everytime we write something to the terminal, instead of just using println!()
    // This is a just a technical detail so dont worry if it doesn't make sense
    let mut stdout = stdout.lock().into_raw_mode().unwrap();

    // Default to english for now, will change later if needed
    let lang = std::env::args().nth(1).unwrap_or(String::from("eng"));
    if lang != "swe" && lang != "eng" {
        println!("Invalid language: {}", lang);
        return;
    }
    let mut blacklist = Blacklist::new(&lang);
    let mut unknown_list = Blacklist::new("unknown");
    // A file handle to the whitelist file in append mode so we won't overwrite previosu work
    let mut whitelist = Whitelist::new();

    for line in input.lines() {
        // Clear terminal
        clear_terminal(&mut stdout);

        let mut split = line.split(':');
        let word = split.nth(0).unwrap().to_lowercase();
        let word = word.trim();
        let alternatives: Vec<&str> = split
            .nth(0)
            .unwrap()
            .split(";")
            .map(|s| s.trim())
            // The last word ends in ; so we have to remove the last
            // element since it will always be empty
            .filter(|x| x != &"")
            .collect();

        // If the blacklist or the todo list contains the word already, skip it
        if blacklist.contains(word) || unknown_list.contains(word) {
            continue;
        }

        // Prins the prompt
        print!("{}\r\n", word);
        for (i, w) in alternatives.iter().enumerate() {
            print!("  {}) {}\r\n", i + 1, w);
        }
        print!("\r\n");
        print!("[1-9]: Select word, u: mark as todo, i: ignore word, s: skip, q: quit\r\n");

        loop {
            let key = read_key(&mut stdin);
            match key {
                // Quit program
                Key::Char('q') | Key::Ctrl('c') => {
                    return;
                }
                // Marks the word as not important
                Key::Char('i') => {
                    blacklist.insert(word.to_string());
                    break;
                }
                // Skips the current word
                Key::Char('s') => {
                    break;
                }
                // Skips the current word
                Key::Char('u') => {
                    blacklist.insert(word.to_string());
                    unknown_list.insert(word.to_string());
                    break;
                }
                // This is a bit messy, maybe put this in its own function?
                Key::Char(n) => {
                    // Converts the input 'char' to an int
                    if let Some(n) = n.to_digit(10) {
                        // If the number is higher than the possible
                        // alternatives, continue the loop
                        if n != 0 && n <= alternatives.len() as u32 {
                            // Since the alternatives start at one it will be the index + 1
                            // We also convert it to usize as that is the only integer type
                            // that can be used to index Vecs
                            let selected = (n - 1) as usize;
                            print!("Write translation:\r\n");
                            // Reads the translation from stdin
                            let mut tl = read_string(&mut stdin, &mut stdout);
                            // If there is no word type specified, assume it is the same as the untranslated word
                            if !tl.contains('_') {
                                let word_type: String = alternatives[selected]
                                    .chars()
                                    .skip_while(|c| *c != ' ')
                                    .skip(1)
                                    .collect();
                                tl.push('_');
                                tl.push_str(&word_type);
                            }

                            let original_word = alternatives[selected].replace(" ", "_");
                            if lang == "swe" {
                                whitelist.insert(&original_word, &tl);
                            } else if lang == "eng" {
                                whitelist.insert(&tl, &original_word);
                            }
                            print!("\r\n");
                            blacklist.insert(word.to_string());

                            // Add the baseform to black list if it is not identical to
                            // the word found in the text
                            let selected_word = alternatives[selected]
                                .chars()
                                .take_while(|c| *c != ' ')
                                .collect();
                            if selected_word != word.to_string() {
                                blacklist.insert(selected_word);
                            }
                            // Continue to next word
                            break;
                        }
                        print!("Invalid number, try again\r\n");
                    }
                }
                _ => {}
            }
            // If we don't sleep here the program will consume as much cpu resources as it can
            std::thread::sleep(std::time::Duration::from_millis(50));
        }
    }
}

fn read_input_tags() -> String {
    let stdin = stdin();
    let mut stdin = stdin.lock();
    let mut input = String::new();
    stdin
        .read_to_string(&mut input)
        .expect("Could not read from stdin");
    return input;
}

pub fn read_key(stdin: &mut AsyncReader) -> Key {
    for k in stdin.keys() {
        if let Ok(k) = k {
            return k;
        }
    }
    return Key::Null;
}

pub fn read_string(stdin: &mut AsyncReader, stdout: &mut RawTerminal<StdoutLock>) -> String {
    let mut tl = String::new();
    let mut keys = stdin.keys();
    loop {
        if let Some(k) = keys.next() {
            match k.unwrap() {
                Key::Ctrl('c') => {
                    std::process::exit(0);
                }
                Key::Char('\n') => return tl,
                Key::Char(n) => {
                    write!(stdout, "{}", n).unwrap();
                    stdout.flush().unwrap();
                    tl.push(n);
                }
                Key::Backspace => {
                    tl.pop();
                    write!(stdout, "\r{}{}", termion::clear::AfterCursor, tl).unwrap();
                    stdout.flush().unwrap();
                }
                _ => {}
            }
        }
        // If we don't sleep here the program will consume as much cpu resources as it can
        std::thread::sleep(std::time::Duration::from_millis(50));
    }
}

// Makes the terminal blank
pub fn clear_terminal(stdout: &mut RawTerminal<StdoutLock>) {
    write!(
        stdout,
        "{}{}",
        termion::clear::All,
        termion::cursor::Goto(1, 1)
    )
    .expect("Could not clear terminal");
    stdout.flush().unwrap();
}

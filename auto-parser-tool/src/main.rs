use std::collections::HashSet;
use std::fs::File;
use std::fs::OpenOptions;
use std::io::StdoutLock;
use std::io::{self, stdin, stdout, Read, Stdin, Write};
use std::io::{BufRead, BufReader};
use termion::event::Key;
use termion::input::TermRead;
use termion::raw::IntoRawMode;
use termion::raw::RawTerminal;
use termion::AsyncReader;

mod blacklist;
use blacklist::*;

fn main() {
    let input = read_input_tags();

    let mut stdin = termion::async_stdin();
    let stdout = stdout();
    let mut stdout = stdout.lock().into_raw_mode().unwrap();
    //let input = std::env::args().nth(1).expect("Did not find any file");
    //let lang = std::env::args().nth(2).expect("Did not find any lang");
    let lang = String::from("eng");
    let mut blacklist = Blacklist::new(lang);
    let (mut whitelist, mut whitelist_handle) = open_whitelist("./whitelist");

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
            .filter(|x| x != &"")
            .collect();

        // If the blacklist or the whitelist contains the word already, skip it
        if blacklist.contains(word) {
            continue;
        }
        print!("{}\r\n", word);
        for (i, w) in alternatives.iter().enumerate() {
            print!("  {}) {}\r\n", i + 1, w);
        }
        print!("\r\n");
        print!("[1-9]: Select word, i: ignore word, s: skip, q: quit\r\n");
        loop {
            let key = read_key(&mut stdin);
            match key {
                Key::Char('q') | Key::Ctrl('c') => {
                    return;
                }
                Key::Char('i') => {
                    blacklist.insert(word.to_string());
                    break;
                }
                Key::Char('s') => {
                    break;
                }
                Key::Char('l') => {
                    //println!("{:#?}", whitelist);
                    //println!("{:#?}", blacklist);
                }
                Key::Char(n) => {
                    if let Some(n) = n.to_digit(10) {
                        if n != 0 && n <= alternatives.len() as u32 {
                            whitelist.insert(alternatives[(n - 1) as usize].to_string());
                            print!("Write translation:\r\n");

                            let tl = read_string(&mut stdin, &mut stdout);
                            whitelist_handle
                                .write_all(
                                    format!(
                                        "{},{}\n",
                                        alternatives[(n - 1) as usize].replace(" ", "_"),
                                        tl
                                    )
                                    .as_bytes(),
                                )
                                .expect("Could not write entry to whitelist");
                            print!("{}\r\n", tl);
                            blacklist.insert(word.to_string());
                            break;
                        }
                        println!("Invalid number, try again");
                    }
                }
                _ => {}
            }
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

fn open_whitelist(path: &str) -> (HashSet<String>, File) {
    let file = OpenOptions::new()
        .create(true)
        .append(true)
        .read(true)
        .open(path)
        .expect(&format!("Could not open '{}'", path));
    let buf = BufReader::new(file.try_clone().unwrap());

    let mut set = HashSet::new();
    // Read every line from the output of the POS-tagger
    for (index, line) in buf.lines().filter_map(|x| x.ok()).enumerate() {
        let mut split = line.split(",");
        let eng = split
            .nth(0)
            .expect(&format!("Error reading english term on line {}", index + 1))
            .trim();
        let swe = split
            .nth(0)
            .expect(&format!("Error reading swedish term on line {}", index + 1))
            .trim();
        if !eng.starts_with("CN") {
            set.insert(eng.split("_").nth(0).unwrap().to_string());
        }
        if !swe.starts_with("CN") {
            set.insert(swe.split("_").nth(0).unwrap().to_string());
        }
    }

    return (set, file);
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
        std::thread::sleep(std::time::Duration::from_millis(50));
    }
}

pub fn print_usage() {
    println!("word-collector INPUT_FILE");
}

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

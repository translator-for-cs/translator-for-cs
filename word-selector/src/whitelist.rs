use crate::*;
use std::collections::HashSet;

#[derive(Debug)]
pub struct Whitelist {
  file: File,
}

impl Whitelist {
  pub fn new() -> Whitelist {
    let file = OpenOptions::new()
      .create(true)
      .append(true)
      .read(true)
      .open("./whitelist")
      .expect("Could not open './whitelist'");

    // Put the handle to the file in a BufReader
    // so that we can read it line by line
    let buf = BufReader::new(file.try_clone().unwrap());

    Whitelist { file }
  }

  pub fn insert(&mut self, swe: &str, eng: &str) {
    let mut line = String::new();
    line.push_str(&eng);
    line.push(',');
    line.push_str(&swe);
    line.push('\n');
    self
      .file
      .write_all(line.as_bytes())
      .expect("Could not write to whitelist");
  }
}

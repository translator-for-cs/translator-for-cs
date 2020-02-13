use crate::*;
use std::collections::HashSet;

#[derive(Debug)]
pub struct Blacklist {
  lang: String,
  file: File,
  set: HashSet<String>,
}

impl Blacklist {
  pub fn new(lang: String) -> Blacklist {
    let file = OpenOptions::new()
      .create(true)
      .append(true)
      .read(true)
      .open(&format!("./blacklist_{}", lang))
      .expect(&format!("Could not open './blacklist_{}'", lang));

    let buf = BufReader::new(file.try_clone().unwrap());

    let mut set = HashSet::new();
    for (_index, line) in buf.lines().filter_map(|x| x.ok()).enumerate() {
      set.insert(line);
    }

    Blacklist { lang, file, set }
  }

  pub fn insert(&mut self, mut word: String) {
    self.set.insert(word.to_string());
    word.push('\n');
    self
      .file
      .write_all(word.as_bytes())
      .expect("Could not write to blacklist");
  }

  pub fn contains(&self, s: &str) -> bool {
    self.set.contains(s)
  }
}

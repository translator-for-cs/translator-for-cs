pub struct WordFile {
  list: Vec<WordEntry>,
}

pub struct WordEntry {
  id: String,
  eng: Word,
  swe: Word,
}

pub enum Word {
  CN { parts: Vec<Word> },
  Single { kind: String, word: String },
}

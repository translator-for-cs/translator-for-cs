# Computer assisted word selector

## Setup
### Prerequisites
  * A working [rust stack](https://www.rust-lang.org/tools/install)
  * A haskell compiler, [GHC](https://www.haskell.org/platform/) is recommended

### Install the POS-Tagger
Enter the tagging repository and build the tool
```bash
ghc Tagger.hs
```

### Build the word-selector tool
Enter the word-selector repository and build with command
```
cargo build --release
```
the binary will be located in `./target/release/word-selector`.

### Final setup
It is recommended to put the Tagger binary as well as the word-selector binary in your PATH but it is not necessary
Keep in mind that the example commands will change if the programs are not in your path.


## Running
How to run
```
cat <text file> ... | Tagger <dict> | word-selector <src-lang>
```
You may use the eng-pos.txt or swe-pos.txt as <dict> for the Tagger.
The <src-lang> may be either swe or eng depending on the source language of the text file.

This will output to blacklist_<lang> and whitelist. If you enter the wrong language as <src-lang> the whitelist will invert the order of
the language terms and will have to be manually fixed!

Blacklist will be a line separated list of words that have already
been processed, while whitelist will be a line separated list of words
in the style of: english_TYPE,swedish_TYPE..

In the future this program will most likely be able to produce these JSON
files without the assistance of external programs.

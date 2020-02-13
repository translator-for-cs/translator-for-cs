# Computer assisted word selector

Build with command
```
cargo build --release
```
the binary will be located in `./target/release/word-selector`.

How to run
```
cat article.txt | Tagger eng-post.txt  | word-selector
```

This will output to blacklist_eng and whitelist.
blacklist will be a line separated list of words that have already
been processed, while whitelist will be a lien separated list of words
in the style of: english_TYPE,swedish_TYPE.
The program will, if given the right input, result in a whitelist that
can be fed to the annotated2json converter.
In the future this program will most likely be able to produce these JSON
files without the assistance of external programs.
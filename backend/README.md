# Setup instructions

## Prerequisites
  * A working GF installation
  * The PGF (Instructions can be found on the GF website)
  * A haskell stack (including stack and cabal)
  * The GF RGL

## Installation
Begin following the README instructions in the grammar repository. Then compile the CSEGrammar
```bash
gf -make CSEgrammar.gf CSEgrammarSwe.gf CSEGrammarEng.gf
```
If it complains about missing dependencies you have most likely incorrectly linked the RGL. The easiest way of simply running the backend after this is to run
```bash
stack ghci Main.hs ../grammar/FindTermsJson.hs
```
followed by
```haskell
Main.main
```
inside ghci.

In the future, building a binary will be supported.
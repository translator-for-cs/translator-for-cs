module Extract where

import PGF

import qualified Data.Map as M
import Data.Char
import Data.List


thepgf  = "CSETranslator.pgf"
thelang = maybe undefined id $ readLanguage "CSETranslatorSwe"

-- obtained by: cat ../courseplans/*_sv.txt >all_sv.txt
thecorpus = "all_sv.txt"

main = do
  extract
  return ()

extract = do
  pgf <- readPGF thepgf
  let morpho = buildMorpho pgf thelang
  corpus <- readFile thecorpus >>= return . toks
  let analyses = [(w,trim (lookupMorpho morpho w)) | w <- corpus]
  return analyses

-- show results from s fields only, each lemma only once
trim ms = nub [showCId f | (f,'s':_) <- ms]

-- the word and its main cat, no sense dist
mainWord  = filter (not . isDigit) . showCId


toks = words . map toLower . unpunct
  where   
    unpunct (c:cs) = case c of
      _ | isAlphaNum c || isSpace c -> c:unpunct cs
      _ -> ' ':c:' ':unpunct cs
    unpunct [] = []


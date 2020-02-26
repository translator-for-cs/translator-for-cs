module FindTerms where

import PGF

import Data.Char
import System.Environment (getArgs)

main = do
  g:l:c:_ <- getArgs
  pgf <- readPGF g
  let Just eng = readLanguage l
  let Just cat = readType c
  let parseTermsText = mkHTML . unwords . map prTermItem . parseTerms pgf eng cat . tokenize
  interact parseTermsText

data TermItem =
    TUnparsed [String]
  | TParsed [String] [Tree]
 deriving Show

prTermItem :: TermItem -> String
prTermItem ti = case ti of
  TUnparsed ss -> unwords ss
  TParsed ss ts -> "\n" ++ tag "b" (unwords ss) ++ " (" ++tag "tt" (prt ts) ++ ")\n"
 where
   prt ts = if null ts then "" else showExpr [] (head ts)

parseTerms :: PGF -> Language -> Type -> [String] -> [TermItem] 
parseTerms pgf eng np ws = case ws of
  []   -> []
  w:ww -> case parseOne ws of
    ParseFailed 1 -> TUnparsed [w] : parseTerms pgf eng np ww
    ParseFailed n -> case splitAt (n-1) ws of
      (ws1,ws2) -> parseMark ws1 : parseTerms pgf eng np ws2
    ParseOk ts ->  [TParsed ws ts]
    _ -> [TUnparsed ws]
 where
   parseOne ws = fst $ parse_ pgf eng np Nothing (unwords (map lowerCase ws))
   parseMark ws = case parse pgf eng np (unwords (map lowerCase ws)) of
     [] -> TUnparsed ws
     ts -> TParsed ws ts

tokenize :: String -> [String]
tokenize = words . unpunct
  where    
    unpunct (c:cs) = case c of
      _ | isAlphaNum c || isSpace c -> c:unpunct cs
      _ -> ' ':c:' ':unpunct cs
    unpunct [] = []

lowerCase :: String -> String
lowerCase w = case w of
  "I" -> w
  _:_:_ | all isUpper w -> w
  _ -> map toLower w

tag :: String -> String -> String
tag t s = "<"++t++">" ++ s ++ "</"++t++">"

mkHTML = tag "html" . tag "body"


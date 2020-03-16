module FindTerms where

import PGF

import Data.Char
import Data.List
import Data.Maybe
import System.Environment (getArgs)

main = do
  xx <- getArgs
  case xx of
    g:l1:l2:c:[] -> do
      pgf <- readPGF g
      let Just eng = readLanguage l1
      let Just swe = readLanguage l2
      let Just cat = readType c
      let parseText = filterUntranslated . map getTerms . parseTerms pgf eng swe cat . tokenize
      input <- getContents
      let output = mkJsonList $ parseText input
      putStrLn output
      -- interact parseText
    _ -> putStrLn usage

usage = "runghc FindTerms <pgf> <src-lang> <target-lang> <cat>  [<input] [>output]"

data TermItem =
    TUnparsed [String]                -- segment of words not parts of a term
  | TParsed [String] [(Tree,String)]  -- words of a term, with tree and translation
 deriving Show

-- (Original, Translation)
type ParsedTerm = (String, Maybe String)
data WordItem = Complex WordItem | Simple String String
  deriving Show

prTermItem :: TermItem -> String
prTermItem ti = case ti of
  TUnparsed ss -> unwords ss
  TParsed ss ts -> hover (unwords ss) (prt ts)
 where
   prt ts = case ts of
     (t,s):_ -> s ++ "\n" ++ showExpr [] t
     _ -> ""

filterUntranslated :: [ParsedTerm] -> [ParsedTerm]
filterUntranslated ts = filter (\(_, t) -> isJust(t)) ts

getTerms :: TermItem -> ParsedTerm
getTerms ti = case ti of
  TUnparsed ss -> (unwords ss, Nothing)
  TParsed ss ts -> (unwords ss, Just (translation ts))
  where
    translation ts = case ts of
      (t,s):_ -> s
      _ -> ""

mkParsedTermJson :: ParsedTerm -> String
mkParsedTermJson (s, Nothing) =
    "{ \"word\": \"" 
    ++ s
    ++ "\", translation: \"\"}"
mkParsedTermJson (s, Just t) =
  "{ \"word\": \"" 
    ++ s
    ++ "\", translation: \"" 
    ++ t
    ++ "\"}"

wordToJson :: WordItem -> String
wordToJson (Simple c w) = "{ class: \""
  ++ c 
  ++ "\", word: \""
  ++ w
  ++ "\"}"

mkJsonList :: [ParsedTerm] -> String
mkJsonList items = "[" ++ intercalate "," (map mkParsedTermJson items) ++ "]"

parseTerms :: PGF -> Language -> Language -> Type -> [String] -> [TermItem] 
parseTerms pgf eng swe np ws = case ws of
  []   -> []
  w:ww -> case parseOne ws of
    ParseFailed 1 -> TUnparsed [w] : parseTerms pgf eng swe np ww
    ParseFailed n -> case splitAt (n-1) ws of
      (ws1,ws2) -> parseMark ws1 : parseTerms pgf eng swe np ws2
    ParseOk ts ->  [TParsed ws [(t,linearize pgf swe t) | t <- ts]]
    _ -> [TUnparsed ws]
 where
   parseOne ws = fst $ parse_ pgf eng np Nothing (unwords (map lowerCase ws))
   parseMark ws = case parse pgf eng np (unwords (map lowerCase ws)) of
     [] -> TUnparsed ws
     ts -> TParsed ws  [(t,linearize pgf swe t) | t <- ts]

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

hover shown revealed =
  "\n<a href=\"\" style=\"background-color:#FFFFFF\" title=\"" ++
  revealed ++ "\">" ++ shown ++ "</a>\n"

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
      putStrLn $ mkJsonList $ parseText input
    _ -> putStrLn usage

usage = "runghc FindTerms <pgf> <src-lang> <target-lang> <cat>  [<input] [>output]"

translateFromEng :: String -> IO String
translateFromEng s = do
  pgf <- readPGF "Terms.pgf"
  let Just eng = readLanguage "TermsEng"
  let Just swe = readLanguage "TermsSwe"
  let Just cat = readType "Term"
  let parseText = filterUntranslated . map getTerms . parseTerms pgf eng swe cat . tokenize
  return $ mkJsonList $ parseText s

translateFromSwe :: String -> IO String
translateFromSwe s = do
  pgf <- readPGF "Terms.pgf"
  let Just eng = readLanguage "TermsEng"
  let Just swe = readLanguage "TermsSwe"
  let Just cat = readType "Term"
  let parseText = filterUntranslated . map getTerms . parseTerms pgf swe eng cat . tokenize
  return $ mkJsonList $ parseText s

data TermItem =
    TUnparsed [String]                -- segment of words not parts of a term
  | TParsed [String] [(Tree,String)]  -- words of a term, with tree and translation
 deriving Show

-- (Original, (Translation, Metadata))
type ParsedTerm = (String, Maybe (String, String))
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
  TParsed ss ts -> (unwords ss, translation ts)
  where
    translation ts = case ts of
      (t,s):_ -> Just (s, show t)
      _ -> Nothing

mkParsedTermJson :: ParsedTerm -> String
mkParsedTermJson (orig, Nothing) =
    "{ \"word\": \"" 
    ++ orig
    ++ "\", translation: \"\"}"
mkParsedTermJson (orig, Just (t, s)) =
  "{ \"word\": \"" 
    ++ orig
    ++ "\", translation: \"" 
    ++ t
    ++ "\", metadata: \"" 
    ++ s
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

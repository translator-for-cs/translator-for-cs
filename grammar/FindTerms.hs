module FindTerms where

import PGF

data TermItem =
    TUnparsed [String]
  | TParsed [String] [Tree]
 deriving Show

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
   parseOne ws = fst $ parse_ pgf eng np Nothing (unwords ws)
   parseMark ws = case parse pgf eng np (unwords ws) of
     [] -> TUnparsed ws
     ts -> TParsed ws ts


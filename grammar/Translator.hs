module Main where

import PGF2

import Data.Char
import Data.List
import qualified Data.Map as M
import System.Environment (getArgs)

-- AR May 2020

-- find translations of full sentences
--   cat ../course_plans/TIN214Eng.txt | runghc Translator.hs CSEShallow Eng Swe -debug
-- or just occurrences of terms:
--   cat ../course_plans/TIN214Swe.txt | runghc Translator.hs CSETranslator Swe Eng -cohorts

main = do
  xx <- getArgs
  case xx of
    mo:from:to:xx -> do
      env <- getEnv mo from to (elem "-debug" xx)
      let oper = case xx of
            _ | elem "-cohorts" xx -> cohorts 
            _ -> translate
      interact (unlines . map (oper env . trim) . lines)

    _ -> putStrLn usage

usage = "usage: runghc Translator.hs <pgf-file-prefix> <from-lang-suffix> <to-lang-suffix> -debug? -cohorts?"

trim s = case s of
  c:cs -> toLower c : tok cs
  _ -> s
 where
  tok s = case s of
    c:cs | elem c ".,:;()" -> ' ':c:' ':tok cs
    c:cs -> c : tok cs
    _ -> s

getEnv mo from to debug = do
  let pgff = mo ++ ".pgf"
  let ceng = mo ++ from
  let cswe = mo ++ to
  pgf <- readPGF pgff
  let Just eng = M.lookup ceng (languages pgf)
  let Just swe = M.lookup cswe (languages pgf)
  return (pgf,eng,swe,debug)

translate (pgf,eng,swe,debug) s = case parse eng (startCat pgf) s of
  ParseOk ((tree,_):_) -> linearize swe tree  ++ deb ("TREE " ++ show tree) 
  _ | all isSpace s -> s
  _ -> "# NO PARSE " ++ s ++ deb (miss s)
 where
   deb s = if debug then "\n# " ++ s else ""
   miss s = unwords $ "MISSING:" : [w | w <- words s, null (lookupMorpho eng w)]

cohorts (_,eng,swe,_) s = unlines $ ("# " ++ s): map prCohort funs
  where
   cohs = lookupCohorts eng s
   funs = nub [((beg,end),(c,f,linearize swe tree)) |
     (beg,c,ms,end) <- cohs,
     isInfixOf (words c) (words s),
     (f,_,_) <- ms, isSuffixOf "CSE" f,
     Just tree <- [readExpr f]
     ]
   prCohort ((beg,end),(c,f,lin)) = concat $ intersperse "\t" [show beg, show end, c, f, lin]

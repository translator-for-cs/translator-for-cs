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
    from:to:xx -> do
      env <- getEnv from to (elem "-debug" xx)
      let oper = case xx of
            _ | elem "-cohorts" xx -> prCohorts "CSE" 
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

getEnv from to debug = do
  let pgff = "CSETranslator.pgf"
  let ceng = "CSETranslator" ++ from
  let cswe = "CSETranslator" ++ to

  --let pgff = mo ++ ".pgf"
  --let ceng = mo ++ from
  --let cswe = mo ++ to
  pgf <- readPGF pgff
  let Just eng = M.lookup ceng (languages pgf)
  let Just swe = M.lookup cswe (languages pgf)
  return (pgf,eng,swe,debug)

translate env@(pgf,eng,swe,debug) s = case parse eng (startCat pgf) s of
  ParseOk ((tree,_):_) -> linearize swe tree  ++ deb ("TREE " ++ show tree) 
  _ | all isSpace s -> s
  _ -> "** " ++ wordByWord env s ++ deb (miss s) 
---  _ -> "# NO PARSE " ++ s 
 where
   deb s = if debug then "\n# " ++ s else ""
   miss s = unwords $ "MISSING:" : [w | w <- words s, null (lookupMorpho eng w)]

prCohorts suff env@(_,eng,swe,_) s = unlines $ ("# " ++ s): map prCohort  (cohorts suff env s)
  where
    prCohort ((beg,end),(c,f,lin)) = concat $ intersperse "\t" [show beg, show end, c, f, lin]
  
cohorts suff (_,eng,swe,_) s =  sortOn (\ ((b,e),_) -> (b, 0 - e)) funs
  where
   cohs = lookupCohorts eng s
   funs = nub [((beg,end),(c,f,linearize swe tree)) |
     (beg,c,ms,end) <- cohs,
     isInfixOf (words c) (words s),
     (f, m, _) <- ms,
     isSuffixOf suff f,
     take 2 m == "s ", --- require s field in morpho
     Just tree <- [readExpr f]
     ]
 

wordByWord env@(_,eng,swe,_) s = combine $ longestMatch scohs
  where
    cohs = cohorts "" env s
    scohs = sortOn (\ ((b,e),_) -> (b, 0 - e)) cohs
    longestMatch cs = case cs of
      c@((b,e),res):cc -> c : longestMatch (dropWhile ((< e) . fst . fst) cc)
      _ -> [] 
    combine cs = case cs of
      ((b,e),(_,_,t)) : cc -> t ++ nextWord e cc
      _ -> []
    nextWord e cs = case cs of
      ((b,_),_):cc | b == e -> combine cc
      ((b,_),_):cc -> mark (take (b - e) (drop e s)) ++ combine cs
      _ -> mark (drop e s)
    mark s = case s of
      _ | all (flip elem ",:(). ;") s -> s
      _ -> case span (==' ') s of
             (s1,s2) -> case break (==' ') s2 of
               (s21,s22) -> s1 ++ "[" ++ s21 ++ "]" ++ s22

    
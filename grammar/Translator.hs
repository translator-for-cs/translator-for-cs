module Main where

import PGF2

import Data.Char
import qualified Data.Map as M
import System.Environment (getArgs)

main = do
  xx <- getArgs
  case xx of
    mo:from:to:xx -> do
      env <- getEnv mo from to (elem "-debug" xx)
      interact (unlines . map (translate env . trim) . lines)

    _ -> putStrLn usage

usage = "usage: runghc Translator.hs <pgf-file-prefix> <from-lang-suffix> <to-lang-suffix> -debug?"

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


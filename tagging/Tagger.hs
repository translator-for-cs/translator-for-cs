import qualified Data.Map as M
import Data.List
import Data.Char
import System.Environment

-- usage:
--  

main = do
  file:_ <- getArgs
  tags <- readFile file
  let tagmap = getTagmap tags
  interact (tag tagmap)

tag tagmap = unlines . map tryMark . toks
  where
    tryMark w = w ++ " : " ++ case look (lower w) of
      Just fcs@(_:_) -> fcs
      Just [] -> "__"
      _ -> case tryCompounds (lower w) of
        fcs@(_:_) -> unwords $ intersperse ";" $ take 2 fcs
        _ -> "_"

    tryCompounds w = [p ++ " + " ++ m | (p,q) <- splits w, Just m <- [look q]]

    splits w = [splitAt i w | i <- [3 .. length w - 4]]

    look w = M.lookup w tagmap

    lower (c:cs) = toLower c : cs

    toks = words . unpunct
    
    unpunct (c:cs) = case c of
      _ | isAlphaNum c || isSpace c -> c:unpunct cs
      _ -> ' ':c:' ':unpunct cs
    unpunct [] = []

getTagmap :: String -> M.Map String String
getTagmap s = M.fromList [(w,unwords ms) | w:":":ms <- map words (lines s)]

getTagmapFromFullform :: String -> M.Map String String
getTagmapFromFullform = M.fromList . map mkEntry . filter (not . null) . stanzas . lines

mkEntry :: [String] -> (String,String)
mkEntry (w:fs) =
 (w,prt (take 3 (nubBy sameCat [(g,c) | f:_:"s":_ <- map words fs, [g,c] <- [parts f]])))
  where
   sameCat (g,c) (h,d) = g==h && (c==d || (head c == 'V' && head d == 'V'))
   prt fcs = unwords [f ++ " " ++ c ++ " ;" | (f,c) <- fcs]
  
parts = words . map (\c -> case c of '_' -> ' ' ; _ -> c)

stanzas ls = case break null ls of
  (s,[])   -> [s]
  (s,[_])  -> [s]
  (s,_:ll) -> s : stanzas ll





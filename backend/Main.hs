{-# LANGUAGE OverloadedStrings #-}

module Main where

import Network.Wai.Middleware.Cors
import Web.Scotty

import Control.Monad.IO.Class (liftIO)

main :: IO ()
main = do
  -- lexicon <- readFile undefined
  scotty 3000 $ do
  middleware simpleCors
  post "/" $ do
    liftIO $ putStrLn "Hej"
  post "/translate" $ do
    query <- param "query"
    -- w <- liftIO $ lookupW query lexicon
    text query

lookupW :: String -> String -> IO String
lookupW = undefined

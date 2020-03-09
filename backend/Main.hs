{-# LANGUAGE OverloadedStrings #-}

module Main where

import Network.Wai.Middleware.Cors
import Web.Scotty

import Control.Monad.IO.Class (liftIO)

main :: IO ()
main = scotty 3000 $ do
  middleware simpleCors
  post "/" $ do
    liftIO $ putStrLn "Hej"
  -- TODO
  -- post "/translate" $ do
  --   query <- param "query"
  --   w <- lookup query lexicon
  --   liftIO $ putStrLn w

{-# LANGUAGE OverloadedStrings #-}

module Main where

import Network.Wai.Middleware.Cors
import Web.Scotty
import FindTermsJson
import qualified Data.Text.Lazy as T

import Control.Monad.IO.Class (liftIO)

main :: IO ()
main = do
  -- lexicon <- readFile undefined
  scotty 3000 $ do
    middleware simpleCors
    get "/translate/eng" $ do
      query <- param "query"
      w <- liftIO $ translateFromEng query
      text $ T.pack w
    get "/translate/swe" $ do
      query <- param "query"
      w <- liftIO $ translateFromSwe query
      text $ T.pack w


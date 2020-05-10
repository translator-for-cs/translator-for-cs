{-# LANGUAGE OverloadedStrings #-}

module Main where

import Network.Wai.Middleware.Cors
import Web.Scotty
import Network.Wai
import FindTermsJson
import qualified Data.Text.Lazy as T

import Control.Monad.IO.Class (liftIO)

corsHeaders :: Middleware
corsHeaders =
  modifyResponse (
    mapResponseHeaders (
      [
      ("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept"),
      ("Access-Control-Allow-Origin", "*"),
      ("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
      ] ++))

main :: IO ()
main = do
  scotty 3000 $ do
    middleware corsHeaders -- simpleCors
    get "/translate/eng" $ do
      query <- param "query"
      w <- liftIO $ translateFromEng query
      text $ T.pack w
    get "/translate/swe" $ do
      query <- param "query"
      w <- liftIO $ translateFromSwe query
      text $ T.pack w


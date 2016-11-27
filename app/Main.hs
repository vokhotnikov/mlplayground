module Main where

import System.IO
import System.Environment
import System.Exit
import Control.Monad ((>=>))

import Lib

main :: IO ()
main = do
  args <- getArgs
  case args of
    [fileName] -> (trainLinear >=> mainLoop) fileName
    _ -> do
      name <- getProgName
      hPutStrLn stderr $ "usage " ++ name ++ "<trainSetFile.csv>"
      exitFailure

module Main where

import System.IO
import System.Environment
import System.Exit
import Control.Monad ((>=>))

import Lib

withFileContents :: FilePath -> (String -> r) -> IO r
withFileContents p a = withFile p ReadMode $ hGetContents >=> return . a

main :: IO ()
main = do
  args <- getArgs
  case args of
    [fileName] -> withFileContents fileName trainLinear >>= mainLoop
    _ -> do
      name <- getProgName
      hPutStrLn stderr $ "usage " ++ name ++ "<trainSetFile.csv>"
      exitFailure

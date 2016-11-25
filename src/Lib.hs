module Lib
    ( trainLinear
    , mainLoop
    ) where

import Control.Monad (when)
import System.IO
import NaiveMatrix

type Features = [Double]

class TrainedAlgorithm a where
  predictBy :: Num r => a -> Features -> r

trainLinear :: TrainedAlgorithm a => FilePath -> IO a
trainLinear = undefined

process :: String -> String
process = ("Processing: " ++)

mainLoop :: TrainedAlgorithm a => a -> IO ()
mainLoop alg = do
  putStr ">> "
  hFlush stdout
  command <- getLine
  when (command /= "quit") $ do
    putStrLn $ process command
    mainLoop alg

someFunc :: IO ()
someFunc = putStrLn "someFunc"



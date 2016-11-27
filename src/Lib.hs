module Lib
    ( TrainedAlgorithm
    , LinearRegression
    , trainLinear
    , mainLoop
    ) where

import Control.Monad (when)
import System.IO
import NaiveMatrix

type Features = [Double]

class TrainedAlgorithm a where
  predictBy :: Num r => a -> Features -> r

newtype LinearRegression = LinearRegression { linTheta :: Vector }

instance TrainedAlgorithm LinearRegression where
  predictBy lr features = undefined

trainLinear :: FilePath -> IO LinearRegression
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



module Csv (parseCsv) where

parseDouble :: String -> Double
parseDouble = read

parseCsv :: String -> [[Double]]
parseCsv s = parseLine <$> lines s
  where parseLine l = parseDouble <$> words l

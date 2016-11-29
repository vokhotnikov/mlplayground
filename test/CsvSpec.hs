module CsvSpec where

import Test.Hspec

import Csv

spec = describe "parsing CSV" $ do
  it "should parse empty file" $
    parseCsv "" `shouldBe` []

  it "should parse single number" $
    parseCsv "1234.01" `shouldBe` [[1234.01]]

  it "should parse int as double" $
    parseCsv "97" `shouldBe` [[97.0]]

  it "should parse single zero" $
    parseCsv "0" `shouldBe` [[0]]

  it "should parse single negative" $
    parseCsv "-881.23" `shouldBe` [[- 881.23]]

  it "should parse a vector" $
    (parseCsv . unlines) ["1", "2.2", "-15", "0"] `shouldBe` [[1.0], [2.2], [-15.0], [0.0]]

  it "should parse a line with several numbers" $
    parseCsv "123 33.1 0 -1" `shouldBe` [[123.0, 33.1, 0.0, -1.0]]

  it "should parse a matrix" $
    (parseCsv . unlines) ["1 2", "34 10.2"] `shouldBe` [[1.0, 2.0], [34.0, 10.2]]

  it "should ignore extra whitespace" $
    parseCsv " 1\t  \t13   " `shouldBe` [[1.0, 13.0]]

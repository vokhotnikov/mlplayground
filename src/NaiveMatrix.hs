module NaiveMatrix
  ( Matrix
  , MatrixSize
  )
where

type Elem = Double

data MatrixSize = MatrixSize { mxRows :: Int, mxColumns :: Int }

data Matrix = Matrix MatrixSize [Elem]

mxFromList :: MatrixSize -> [Elem] -> Either String Matrix
mxFromList = undefined

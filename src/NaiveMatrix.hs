module NaiveMatrix
  ( Matrix
  , MatrixSize
  , Vector
  )
where

type Elem = Double

data MatrixSize = MatrixSize { mxRows :: Int, mxColumns :: Int }

data Matrix = Matrix MatrixSize [Elem]

newtype Vector = Vector [Elem]

class MatrixLike m where
  dimensions :: m -> MatrixSize

instance MatrixLike Matrix where
  dimensions (Matrix sz _) = sz

instance MatrixLike Vector where
  dimensions (Vector es) = MatrixSize (length es) 1

mxFromList :: MatrixSize -> [Elem] -> Either String Matrix
mxFromList = undefined

module NaiveMatrix where

type Elem = Double

data MatrixSize = MatrixSize { mxRows :: Int, mxColumns :: Int }
                deriving (Show, Eq)

data Matrix = Matrix MatrixSize [Elem]
            deriving (Show, Eq)

newtype Vector = Vector [Elem]
                 deriving(Show, Eq)

class MatrixLike m where
  dimensions :: m -> MatrixSize
  flatten :: m -> [Elem]

instance MatrixLike Matrix where
  dimensions (Matrix sz _) = sz
  flatten (Matrix _ elems) = elems

instance MatrixLike Vector where
  dimensions (Vector es) = MatrixSize (length es) 1
  flatten (Vector es) = es

mxFromList :: MatrixSize -> [Elem] -> Either String Matrix
mxFromList = undefined

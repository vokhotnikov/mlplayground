module InfrastructureSpec where

import Test.Hspec

spec = describe "Testing infrastructure" $
  it "should run simple specs" $
    1 + 2 `shouldBe` 3

module Main where

import Test.Tasty
import Test.Tasty.HUnit
import FizzBuzz

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
  [ testCase "Divisible entre 3" $ fizzbuzz 3 @?= "fizz"
  , testCase "Divisible entre 5" $ fizzbuzz 5 @?= "buzz"
  , testCase "Divisible entre 15" $ fizzbuzz 15 @?= "fizzbuzz"
  , testCase "Otro número" $ fizzbuzz 7 @?= "7"
  ]

main :: IO ()
main = defaultMain fizzBuzzSuite

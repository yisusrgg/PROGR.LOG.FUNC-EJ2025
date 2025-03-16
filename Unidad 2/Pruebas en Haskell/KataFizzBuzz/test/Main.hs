-- module Main (main) where
-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented."

module Main where

import Test.Tasty
import Test.Tasty.HUnit
import FizzBuzz

lessThan20Answers = words ("one two three four five six seven eight nine ten " ++
                            "eleven twelve thirteen fourteen fifteen sixteen " ++
                            "seventeen eighteen nineteen")

tensAnswers = words "twenty thirty forty fifty sixty seventy eighty ninety"


fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
                    [ testGroup "fizzbuzz" $
                        [ 
                            testCase "1 is one" $ fizzBuzz 1 @?= "one",
                            testCase "2 is two" $ fizzBuzz 2 @?= "two",
                            testCase "3 is Fizz!" $ fizzBuzz 3 @?= "Fizz!",
                            testCase "9 is Fizz!" $ fizzBuzz 9 @?= "Fizz!",
                            testCase "5 is Buzz!" $ fizzBuzz 5 @?= "Buzz!",
                            testCase "20 is Buzz!" $ fizzBuzz 20 @?= "Buzz!",
                            testCase "15 is FizzBuzz!" $ fizzBuzz 15 @?= "FizzBuzz!",
                            testCase "30 is FizzBuzz!" $ fizzBuzz 30 @?= "FizzBuzz!",
                            testCase "1000 is Numero fuera de los limites!" $ fizzBuzz 1000 @?= "Numero fuera de los limites"
                        ]
                        ,testGroup "numeros"
                            [ testCase "1 is one" $ numeros 1 @?= "one"
                            , testCase "5 is five" $ numeros 5 @?= "five"
                            , testCase "10 is ten" $ numeros 10 @?= "ten"
                            , testCase "11 is eleven" $ numeros 11 @?= "eleven"
                            , testCase "19 is nineteen" $ numeros 19 @?= "nineteen"
                            , testCase "20 is twenty" $ numeros 20 @?= "twenty"
                            , testCase "25 is twenty five" $ numeros 25 @?= "twenty five"
                            , testCase "50 is fifty" $ numeros 50 @?= "fifty"
                            , testCase "59 is fifty nine" $ numeros 59 @?= "fifty nine"
                            , testCase "90 is ninety" $ numeros 90 @?= "ninety"
                            , testCase "91 is ninety one" $ numeros 91 @?= "ninety one"
                            , testCase "99 is ninety nine" $ numeros 99 @?= "ninety nine"
                            , testCase "100 is one hundred" $ numeros 100 @?= "one hundred"
                            ]
                    ]


main = defaultMain fizzBuzzSuite

-- module Main (main) where

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented."
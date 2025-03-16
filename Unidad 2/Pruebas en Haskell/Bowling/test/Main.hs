module Main (main) where

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented."

import Test.Tasty
import Test.Tasty.HUnit
-- import Bowling (toFrames, Frame(Open))
import Bowling

tests :: [(String, [Int], Maybe[Frame])]
tests = 
    [
        ("zeros are open 0 0",
            replicate 20 0,
            Just $ replicate 10 (Open 0 0)
        ),
        ("ones are open 1 1",
            replicate 20 1,
            Just $ replicate 10 (Open 1 1)
        ),
        ("4+5s are open 4 5",
            take 20 $ cycle [4,5],
            Just $ replicate 10 (Open 4 5)
        ),
        ("spares in non last position",
            let spare = [1,9]
                opens n = take (n*2)  $ cycle [3,3]
            in spare ++ opens 2 ++ spare ++ opens 4 ++ spare ++ opens 1,
            let spare = [Spare 1 3]
                opens n = replicate n (Open 3 3)
            in Just $ spare ++ opens 2 ++ spare ++ opens 4 ++ spare ++ opens 1
        ),
        ("spares in last position",
            take 18 (cycle [3, 3]) ++ [1, 9, 5], 
            Just $ replicate 9 (Open 3 3 ) ++ [Spare 1 5]
        ),
        ("strike in non last position",
            let strike = [10]
                opens n = take (n*2)  $ cycle [3,3]
            in strike ++ opens 2 ++ strike ++ opens 4 ++ strike ++ opens 1,
            let strike = [Strike 3 3]
                opens n = replicate n (Open 3 3)
            in Just $ strike ++ opens 2 ++ strike ++ opens 4 ++ strike ++ opens 1
        ),
        ("strike in last position",
            take 18 (cycle [3, 3]) ++ [10, 5, 5], 
            Just $replicate 9 (Open 3 3) ++ [Strike 5 5]
        ),
        ("ill formed play",
            [0,1],
            Nothing
        )
        -- PRUEBAS GENERADAS POR NOSOTROS
        ,
        ("no spares o strikes",
            take 20 $ cycle [3, 5],
            Just $ replicate 10 (Open 3 5)
        ),
        ("demasiados rolls",
            replicate 21 4,
            Nothing
        ),
        ("invalid spare",
            [5, 6, 3, 4, 2, 7, 10, 1, 8, 10, 10, 10, 6, 2, 8, 0],
            Nothing
        ),
        ("todos spares",
            take 21 $ cycle [5, 5],
            Just $ replicate 10 (Spare 5 5)
        ),
        ("invalid frame sum",
            [4, 7, 3, 6, 10, 10, 5, 5, 8, 3, 2, 7, 10, 10, 10],
            Nothing
        )
    ]


bowlingSuite :: TestTree
bowlingSuite = testGroup "Bowling tests"
                [ testGroup "toFrames" $
                    map (\(label, input, expected) ->
                            testCase label $ toFrames input @?= expected) tests
                    ,testGroup "score"
                    [ let Just frames = 
                            toFrames [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
                      in testCase "Spec example" $ score frames @?= 133
                      ,testCase "Perfect game" $
                        case toFrames (replicate 12 10) of
                            Just frames -> score frames @?= 300
                            Nothing -> assertFailure "toFrames failed on perfect game"
                      , testCase "All nines" $
                        case toFrames (take 20 $ cycle [9,0]) of
                            Just frames -> score frames @?= 90
                            Nothing -> assertFailure "toFrames failed on all nines"
                      , testCase "All spares (5,5)" $
                        case toFrames (replicate 21 5) of
                            Just frames -> score frames @?= 150
                            Nothing -> assertFailure "toFrames failed on all spares"
                      , testCase "Spare in last frame" $
                        case toFrames [6, 3, 7, 2, 8, 2, 5, 5, 9, 1, 10, 10, 10, 6, 4, 5, 5, 8] of
                            Just frames -> score frames @?= 181
                            Nothing -> assertFailure "toFrames failed on spare in last frame"
                      , testCase "Only open frames" $
                        case toFrames [3, 4, 2, 6, 4, 5, 5, 2, 8, 1, 3, 6, 2, 7, 1, 4, 5, 3, 2, 4] of
                            Just frames -> score frames @?= 77
                            Nothing -> assertFailure "toFrames failed on only open frames"
                    ]
                ]



main = defaultMain bowlingSuite
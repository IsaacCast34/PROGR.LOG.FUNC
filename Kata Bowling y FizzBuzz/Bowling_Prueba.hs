module Main where

import Test.Tasty
import Test.Tasty.HUnit
import Bowling

tests :: TestTree
tests = testGroup "Bowling tests"
  [ testGroup "toFrames"
    [ testCase "zeros are open 0 0" $ toFrames (replicate 20 0) @?= Just (replicate 10 (Open 0 0))
    , testCase "ones are open 1 1" $ toFrames (replicate 20 1) @?= Just (replicate 10 (Open 1 1))
    -- Agregar más pruebas para toFrames
    ]
  , testGroup "score"
    [ testCase "spec example" $
        let Just frames = toFrames [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
        in score frames @?= 133
    -- Agregar más pruebas para score
    ]
  , testGroup "scorePlay"
    [ testCase "example game" $ scorePlay [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6] @?= Just 133
    -- Agregar más pruebas para scorePlay
    ]
  ]

main :: IO ()
main = defaultMain tests

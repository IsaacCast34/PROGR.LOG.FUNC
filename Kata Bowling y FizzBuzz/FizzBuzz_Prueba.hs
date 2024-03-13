-- Tests.hs
module Main where

import Test.Tasty
import Test.Tasty.HUnit
import FizzBuzz

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
  [ testGroup "fizzbuzz"
    [ testCase "1 is one!" $ fizzbuzz 1 @?= "one!"
    , testCase "2 is two!" $ fizzbuzz 2 @?= "two!"
    , testCase "3 is fizz!" $ fizzbuzz 3 @?= "fizz!"
    , testCase "5 is buzz!" $ fizzbuzz 5 @?= "buzz!"
    , testCase "7 is seven!" $ fizzbuzz 7 @?= "seven!"
    , testCase "10 is ten!" $ fizzbuzz 10 @?= "ten!"
    , testCase "13 is thirteen!" $ fizzbuzz 13 @?= "thirteen!"
    , testCase "22 is twenty two!" $ fizzbuzz 22 @?= "twenty two!"
    , testCase "24 is twenty four!" $ fizzbuzz 24 @?= "twenty four!"
    , testCase "25 is twenty five!" $ fizzbuzz 25 @?= "twenty five!"
    , testCase "30 is fizzbuzz!" $ fizzbuzz 30 @?= "fizzbuzz!"
    , testCase "31 is fizz!" $ fizzbuzz 31 @?= "fizz!"
    , testCase "34 is thirty four!" $ fizzbuzz 34 @?= "thirty four!"
    , testCase "39 is thirty nine!" $ fizzbuzz 39 @?= "thirty nine!"
    , testCase "42 is forty two!" $ fizzbuzz 42 @?= "forty two!"
    , testCase "47 is forty seven!" $ fizzbuzz 47 @?= "forty seven!"
    , testCase "50 is fifty!" $ fizzbuzz 50 @?= "fifty!"
    , testCase "55 is fifty five!" $ fizzbuzz 55 @?= "fifty five!"
    , testCase "58 is fifty eight!" $ fizzbuzz 58 @?= "fifty eight!"
    , testCase "63 is sixty three!" $ fizzbuzz 63 @?= "sixty three!"
    , testCase "69 is sixty nine!" $ fizzbuzz 69 @?= "sixty nine!"
    , testCase "72 is seventy two!" $ fizzbuzz 72 @?= "seventy two!"
    , testCase "76 is seventy six!" $ fizzbuzz 76 @?= "seventy six!"
    , testCase "80 is eighty!" $ fizzbuzz 80 @?= "eighty!"
    , testCase "88 is eighty eight!" $ fizzbuzz 88 @?= "eighty eight!"
    , testCase "90 is ninety!" $ fizzbuzz 90 @?= "ninety!"
    , testCase "99 is ninety nine!" $ fizzbuzz 99 @?= "ninety nine!"
    , testCase "100 is one hundred!" $ fizzbuzz 100 @?= "one hundred!"
    ]
  ]

main :: IO ()
main = defaultMain fizzBuzzSuite

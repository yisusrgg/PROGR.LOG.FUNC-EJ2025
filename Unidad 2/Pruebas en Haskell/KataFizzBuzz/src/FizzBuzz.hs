module FizzBuzz (someFunc, fizzBuzz, numeros) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Funcion para llamar el juego FizzBuzz
fizzBuzz :: Int -> String
fizzBuzz n
    | n < 0 || n > 100 = "Numero fuera de los limites"
    | n `mod` 15 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Fizz!"
    | n `mod` 5 == 0 = "Buzz!"
    | otherwise = numeros n


-- Funcion para escribir los numeros en ingles 
numeros :: Int -> String
numeros n 
    | n < 0 || n > 100 = "Numero fuera de los limites"
    | n == 0 = "zero"
    | n == 100 = "one hundred"
    | n<20 = units !! n 
    | n<100 = tens !! (n `div` 10) ++ if n `mod` 10 /= 0 then " " ++ units !! (n `mod` 10) else ""
    where 
        units = ["", "one", "two", "three", "four", "five", "six", "seven", "eigth", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        tens= ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


import Data.List (intercalate)

-- Función principal que evalúa el número
fizzBuzz :: Int -> String
fizzBuzz n
    | n < 0 || n > 100 = "fuera de rango"
    | n `mod` 15 == 0 = "FizzBuzz!"
    | n `mod` 5 == 0  = "Fizz!"
    | n `mod` 3 == 0  = "Buzz!"
    | otherwise       = numeroAPalabra n

-- Función para convertir números a palabras
digitos :: [String]
digitos = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

decenas :: [String]
decenas = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

otros :: [String]
otros = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

numeroAPalabra :: Int -> String
numeroAPalabra n
    | n < 10    = digitos !! n
    | n < 20    = otros !! (n - 10)
    | n < 100   = let (t, u) = n `divMod` 10
                   in if u == 0 then otros !! t else otros !! t ++ " " ++ digitos !! u
-- Funcion para llamar el juego FizzBuzz
fizzBuzz :: Int -> String
fizzBuzz n
    | n < 0 || n > 1000000 = "Numero fuera de los limites"
    | esPrimo n = "FizzBuzz!"
    | otherwise = numeros n

-- Funcion para verificar si un numero es primo
esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo 0 = False
esPrimo 2 = True
esPrimo n = null [ x | x <- [2..(n-1)], n `mod` x == 0]

-- Funcion para escribir los numeros en español
numeros :: Int -> String
numeros n
    | n < 0 || n > 1000000 = "Numero fuera de los limites"
    | n == 0 = "cero"
    | n == 100 = "cien"
    | n == 1000000 = "un millon"
    | n < 20 = unidades !! n
    | n < 30 = veintes !! (n `mod` 20)
    | n < 100 = decenas !! (n `div` 10) ++ if n `mod` 10 /= 0 then " y " ++ unidades !! (n `mod` 10) else ""
    | n < 1000 = centenas !! (n `div` 100) ++ if n `mod` 100 /= 0 then " " ++ numeros (n `mod` 100) else ""
    |  n < 1000000 = (if (n `div` 1000) == 1 then "mil " else numeros (n `div` 1000) ++ " mil ") ++ if (n `mod` 1000) /= 0 then numeros (n `mod` 1000) else ""
    where
        unidades = ["", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez",
                    "once", "doce", "trece", "catorce", "quince", "dieciseis", "diecisiete", "dieciocho", "diecinueve"]
        veintes = ["veinte", "veintiuno", "veintidos", "veintitres", "veinticuatro", "veinticinco",
                   "veintiseis", "veintisiete", "veintiocho", "veintinueve"]
        decenas = ["", "", "veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"]
        centenas = ["", "ciento", "doscientos", "trescientos", "cuatrocientos", "quinientos",
                    "seiscientos", "setecientos", "ochocientos", "novecientos"]

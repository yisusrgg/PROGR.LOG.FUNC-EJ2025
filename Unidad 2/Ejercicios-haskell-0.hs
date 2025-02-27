-- 1. Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista = sum

-- 2. Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- 3. Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [0..n], even x]

-- 4. Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena = length

-- 5. Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista = reverse

-- 6. Duplicar elementos
duplicarElementos :: [Int] -> [Int]
duplicarElementos = concatMap (\x -> [x, x])

-- 7. Filtrar elementos pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- 8. Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- 9. Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- 10. Palíndromo
esPalindromo :: String -> Bool
esPalindromo str = str == reverse str

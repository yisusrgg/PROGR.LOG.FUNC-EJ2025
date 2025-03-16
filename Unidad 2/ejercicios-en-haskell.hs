import Data.Map (Map, mapWithKey, fromList, toList)
import qualified Data.Map.Strict as Map
import Data.Char (toUpper)
import Data.List (nub)
import Data.Array
import Data.List (genericLength)

-- 1. Funciones para aplicar descuento e IVA
aplicarDescuento :: Double -> Double -> Double
aplicarDescuento precio descuento = precio * (1 - descuento / 100)

aplicarIVA :: Double -> Double -> Double
aplicarIVA precio iva = precio * (1 + iva / 100)

procesarCesta :: Map String (Double, Double) -> (Double -> Double -> Double) -> Map String Double
procesarCesta cesta f = mapWithKey (\_ (precio, porcentaje) -> f precio porcentaje) cesta

-- 2. Aplicar función a cada elemento de una lista
aplicarFuncion :: (a -> b) -> [a] -> [b]
aplicarFuncion f xs = map f xs

-- 3. Crear diccionario con palabras y su longitud
longitudPalabras :: String -> Map String Int
longitudPalabras frase = fromList [(palabra, length palabra) | palabra <- nub (words frase)]

-- 4. Convertir notas a calificaciones
convertirNotas :: Map.Map String Int -> Map.Map String String
convertirNotas notas = Map.mapWithKey (\materia nota -> calificacion nota) notas
  where
    calificacion n
      | n >= 95   = "EXCELENTE"
      | n >= 85   = "NOTABLE"
      | n >= 75   = "BUENO"
      | n >= 70   = "SUFICIENTE"
      | otherwise = "DESEMPEÑO INSUFICIENTE"

-- 5. Calcular el módulo de un vector
moduloVector :: [Double] -> Double
moduloVector v = sqrt (sum (map (^2) v))

-- 6. Encontrar valores atípicos
  valoresAtipicos :: [Double] -> [Double]
  valoresAtipicos xs = filter esAtipico xs
  where
    n = genericLength xs
    media = sum xs / n
    varianza = sum (map (\x -> (x - media) ^ 2) xs) / n
    desviacionEstandar = sqrt varianza
    puntuacionTipica x = (x - media) / desviacionEstandar
    esAtipico x = let pt = puntuacionTipica x in pt > 3 || pt < -3

arrayEnteros :: Array Int Int

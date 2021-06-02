{-# LANGUAGE RankNTypes #-}
{-# OPTIONS_GHC -Wno-deferred-type-errors #-}
{-# LANGUAGE FlexibleContexts #-}
import Data.List (genericLength)
import Data.Map ( Map, fromList )
import qualified Data.Map as M

-- Ejercicio 1
precioDescuento :: Float -> Float -> Float
precioDescuento costo descuento = costo - ((descuento * costo)/100)

precioIva :: Float -> Float
precioIva costo = 1.16 * costo

canasta :: String -> [Float] -> Float -> Float
canasta "IVA" lista 1.16 = precioIva (sum lista)
canasta "Descuento" lista descuento = precioDescuento (sum lista) descuento

--Ejercicio 2
lista :: Float -> [Float]
lista x = [1 .. x]

calculadora :: String -> Float -> Float
calculadora opcion n | opcion == "seno" = sin n
                     | opcion == "coseno" = cos n
                     | opcion == "tangente" = tan n
                     | opcion == "exponencial" = n ** 2
                     | opcion == "logaritmo" = log n


    -- Para que funcione como el ejercicio indica, se deberá llamar a la función lista al usarlo
resultados :: String -> [Float] -> [Float]
resultados opcion = map (calculadora opcion)

-- Ejercicio 3
funcion1 :: Float -> Float
funcion1 numero = numero + 1

funcion2 :: [Float] -> [Float]
funcion2 = map funcion1

funcion3 :: [Float] -> [Float]
funcion3 (x:xs) = funcion1 x : funcion2 xs

--Ejercicio 4
funcionBooleana :: Float -> Bool
funcionBooleana valor | valor == 0 = True
                      | valor == 1 = False

listaValoresBooleanos :: [Float] -> [Bool]
listaValoresBooleanos = map funcionBooleana

--Ejercicio 5


--Ejercicio 6
--notas :: Float -> String 
--notas x | x < 5 = "SS"
--                   | x < 7 = "AP"
--                   | x < 9 = "NT"
--                   | x < 10 = "SB"
--                   | otherwise = "MH"
notas :: [Float] -> [String]
notas [] = []
notas (x:xs) | x < 5     = "SS" : notas xs
                  | x < 7     = "AP" : notas xs
                  | x < 9     = "NT" : notas xs
                  | x < 10    = "SB" : notas xs
                  | otherwise = "MH" : notas xs

--Ejercicio 7
notas2 :: Float -> String
notas2 x | x < 5 = "SS"
                   | x < 7 = "AP"
                   | x < 9 = "NT"
                   | x < 10 = "SB"
                   | otherwise = "MH"

notasAlumno ::  Map [Char] String
notasAlumno = M.map notas2 (fromList [("Matemáticas",6.5),("Física",5),("Economía",3.4)])

--Ejercicio 8
notasAlumnoAprobadas :: Num String => Map String Bool
notasAlumnoAprobadas = M.map (\notas -> notas >= 5) (M.map notas2 (fromList [("Matemáticas",6.5),("Física",5),("Economía",3.4)]))

--Ejercicio 9
cuadrado :: Float -> Float
cuadrado n = n^2

modulo :: [Float] -> Float
modulo xs = sqrt (sum (map cuadrado xs))

--Ejercicio 10
-- No sé hacerlo en haskell

--Ejercicio 11
media :: Floating a => [a] -> a
media xs = sum xs / genericLength xs

varianza :: Floating a => [a] -> a
varianza xs = media $ map (\x -> (x - m)^2) xs
    where m = media xs

desviacionTipica :: Floating a => [a] -> a
desviacionTipica = sqrt . varianza


datos_atipicos :: Floating a => [a] -> [a]
datos_atipicos [] = []
datos_atipicos (x:xs) = (x - media xs)/desviacionTipica xs : datos_atipicos xs
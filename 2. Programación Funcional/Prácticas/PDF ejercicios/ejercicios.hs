-- Ejercicio A
-- Num es la clase de tipos numéricos. Sus miembros 
-- tienen la propiedad de poder comportarse como números.
sumaMonedas :: Num int =>int -> int -> int -> int -> int -> int
sumaMonedas a b c d e = a + 2*b + 5*c + 10*d + 20*e

--Ejercicio B
volumenEsfera :: Float -> Float
volumenEsfera r = pi * r^3 * (4/3)

--Ejercicio C
areaCoronaCircular :: Float -> Float -> Float
areaCoronaCircular r1 r2 = pi * (r2^2-r1^2)

--Ejercicio D
ultimaCifra :: Int -> Int
ultimaCifra cifra = mod cifra 10

--Ejercicio E
maxTres :: Int -> Int -> Int -> Int
maxTres numero1 numero2 numero3 = max numero1 (max numero2 numero3)

--Ejercicio F
rota1 :: [a] -> [a]
-- tail: Lista obtenida eliminando el primer elemento de xs
-- head: Primer elemento de la lista xs
-- ++: Forma de concatenar dos listas
rota1 xs = tail xs ++ [head xs]

--Ejercicio G
rota :: Int -> [a] -> [a]
-- drop: borra los primeros elementos de xs
-- take: es la lista de los n primeros elementos de xs
rota n xs = drop n xs ++ take n xs

--Ejercicio H
rango :: Ord a => [a] -> [a]
rango xs = [minimum xs, maximum xs]

--Ejercicio I
-- Eq es utilizada por los tipos que soportan comparaciones 
-- por igualdad. Los miembros de esta clase implementan las 
-- funciones == o /= en algún lugar de su definición
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

-- Ejercicio J
interior :: [a] -> [a]
-- init: lista obtenida eliminando el último elemento de xs
interior xs = tail (init xs)

-- Ejercicio K
finales :: Int -> [a] -> [a]
finales n xs = drop n xs

-- Ejercicio L
segmento :: Int -> Int -> [a] -> [a]
-- Tomamos los primeros n números en la lista dada y al final  
-- borramos los primeros números desde 0 hasta m-1
segmento m n xs =  drop (m-1) (take n xs)

-- Ejercicio M
extremos :: Int -> [a] -> [a]
-- Concatemamos con take los primeros n números
-- y con drop eliminamos el tamaño de xs - n números de la lista dada
extremos n xs = take n xs ++ drop (length xs - n) xs

-- Ejercicio N
mediano :: Int -> Int -> Int -> Int
mediano x y z = minimum [x,y,z] - maximum [x,y,z] - x + y + z

-- Ejercicio O
tresIguales :: Int -> Int -> Int -> Bool
tresIguales x y z = x==y && y==z

-- Ejercicio P
tresDiferentes :: Int -> Int -> Int -> Bool
tresDiferentes x y z = x/=y && x/=z && y/=z

-- Ejercicio Q
cuatroIguales :: Int -> Int -> Int -> Int -> Bool
-- cuatroIguales x y z u = x==y && x==z && x==u
cuatroIguales x y z u = x==y && tresIguales y z u

-- Ejercicio R
triangular :: Int -> Int -> Int -> Bool
triangular a b c = ((a + b) > c) && ((a + c) > b) && ((c + b) > a)

-- Ejercicio S
divisionSegura :: Float -> Float -> Float
divisionSegura x 0 = 9999.0
divisionSegura x y = x/y

-- Ejercicio T
xor1 :: Bool -> Bool -> Bool
xor1 True  True  = False
xor1 False False = False
xor1 True  False = True
xor1 False True  = True

-- Ejercicio U
-- Este ejercicio es igual al anterior, la diferencia es que
-- aquí, como se pide utilizar solo dos ecuaciones, si definimos cada caso
-- tendremos como resultado 4 casos, pero si ponemos un parámetro, entonces
-- el argumento que se pase en la función podrá ser opuesto a lo planteado
xor2 :: Bool -> Bool -> Bool
xor2 True  x = not x
xor2 False x = x

-- Ejercicio V
-- Seguimos con el mismo problema del ejercicio T
-- (x||y) -> A menos que ambos sean falsos, son verdaderos
-- (x&&y) -> A menos que ambos sean verdaderos, son falsos
-- Ej: si x es Verdadero e y Verdadero (x||y) = verdadero
-- (x&&y) = verdadero, entonces verdadero && (no verdadero)
-- es igual a falso
xor3 :: Bool -> Bool -> Bool
xor3 x y = (x||y) && not (x&&y)

-- Ejercicio W
-- Ej: Si Verdadero no es igual a Verdadero entonces es falso
xor4 :: Bool -> Bool -> Bool
xor4 x y = x /= y

-- Ejercicio X
mayorRectangulo :: (Num a, Ord a) => [a] -> [a] -> [a]
mayorRectangulo r1 r2 | (head r1 * last r1) >= (head r2 * last r2) = [head r1, last r1]
                        | otherwise = [head r2, last r2]

-- Ejercicio Y
cuadrante :: (Ord a, Num a) => [a] -> Int 
cuadrante p | head p > 0 && last p > 0 = 1
            | head p < 0 && last p > 0 = 2
            | head p < 0 && last p < 0 = 3
            | otherwise = 4

-- Ejercicio Z
intercambia :: [a] -> [a]
intercambia p = [last p, head p]
--Segundo ejercicio resuelto dando los pares base y altura con una tupla
mayorRectangulo :: (Ord b, Num b) => (b, b) -> (b, b) -> (b, b)
mayorRectangulo (base1,altura1) (base2,altura2) 
        | base1*altura1 >= base2*altura2 = (base1,altura1)
        | otherwise  = (base2,altura2)

--Segundo ejercicio resuelto dando los pares base y altura con una lista
mayorRectangulo2 :: (Num a, Ord a) => [a] -> [a] -> [a]
mayorRectangulo2 r1 r2 
        | (head r1 * last r1) >= (head r2 * last r2) = [head r1, last r1]
        | otherwise = [head r2, last r2]
--Primer ejercicio resuelto dando las coordenadas de X e Y en una tupla
cuadrante :: (Ord x, Ord y, Num x, Num y, Num p) => (x, y) -> p
cuadrante (x,y)| x > 0 && y > 0 = 1
               | x < 0 && y > 0 = 2
               | x < 0 && y < 0 = 3
               | otherwise = 4

--Primer ejercicio resuelto dando las coordenadas de X e Y en una lista
cuadrante2 :: (Ord a, Num a) => [a] -> Int 
cuadrante2 p | head p > 0 && last p > 0 = 1
             | head p < 0 && last p > 0 = 2
             | head p < 0 && last p < 0 = 3
             | otherwise = 4
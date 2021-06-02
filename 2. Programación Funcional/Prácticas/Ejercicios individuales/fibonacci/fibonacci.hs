fibonacci :: Int -> Int 
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci numero = fibonacci (numero-1) + fibonacci (numero-2)

fibList :: Int -> [Int]
fibList n = map fibonacci [1..n]

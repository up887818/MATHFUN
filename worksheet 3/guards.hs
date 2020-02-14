import Prelude hiding (gcd)

-- 5
sumNumbers :: Int -> Int
sumNumbers x
  | x == 1 = 1
  | otherwise = x + sumNumbers (x-1)

-- 6
sumSquares :: Int -> Int
sumSquares x
  | x == 1 = 1
  | otherwise = x^2 + sumSquares (x-1)

-- 7
power :: Int -> Int -> Int
power x y
  | y == 1 = x
  | otherwise = x * power x (y-1)

-- 8
sumFromTo :: Int -> Int -> Int
sumFromTo x y
  | x > y = 0
  | otherwise = x + sumFromTo (x+1) y

-- 9
gcd :: Int -> Int -> Int
gcd x y
  | x == y = x
  | x < y = gcd x (abs(y-x))
  | otherwise = gcd y (abs(x-y))

-- 10
intSquareRoot :: Int -> Int
intSquareRoot n = findRoot n n

findRoot :: Int -> Int -> Int
findRoot n s
  | s^2 <= n = s
  | otherwise = findRoot n (s-1)

import Data.Set

-- https://stackoverflow.com/questions/23944533/my-haskell-solution-to-euler-3-is-inefficient/23944933#23944933
prime_factor = go (2:[3,5..]) where
  go (p:ps) n
      | p*p > n        = [n]
      | n `mod` p == 0 = p : go (p:ps) (n `div` p)
      | otherwise      = go ps n

factorial n = product [1..n]

-- https://stackoverflow.com/questions/16108714/haskell-removing-duplicates-from-a-list
mkUniq :: Ord a => [a] -> [a]
mkUniq = toList . fromList

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

nth_central_binomial_coefficient n = factorial(2*n) / factorial(n)**2

 
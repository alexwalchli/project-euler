import library (factorial, prime_factor)

solve_problem_1 = sum [x | x <- [1..999], x `mod` 5 == 0 || x `mod` 3 == 0]

solve_problem_2 = sum [x | x <- takeWhile(<4000000) fibs, x `mod` 2 == 0]

solve_problem_3 = maximum (prime_factor 600851475143)

solve_problem_4 = maximum [x | x <- [x*y | x <- [1..999], y <- [1..999]], show x == reverse(show x)]

solve_problem_5 = foldr1 lcm [1..20]

solve_problem_6 = sum([1..100])^2 - sum [x | x <- map(^2) [1..100]]

nth_central_binomial_coefficient n = factorial(2*n) / factorial(n)**2
solve_problem_15 = nth_central_binomial_coefficient(20)
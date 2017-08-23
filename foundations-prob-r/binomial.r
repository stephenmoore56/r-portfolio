flips = rbinom(1000000, 1, .5)
mean(flips)

1 - pbinom()
?pbinom

flips = rbinom(10000, 10, .30)
count(flips[])
mean(rbinom(1000000, 10, .3) >= 5)
1 - pbinom(4, 10, .3)

flips = rbinom(100000, 10, .5)
mean(flips)
var(flips)
10 * .5 * .5

A = rbinom(1000000, 1, .5)
B = rbinom(1000000, 1, .5)
mean(A & B)
mean(A | B)
mean(!A & !B)
pbinom(4, 10, .60)

# .90 is prior probability of fair
# .10 is prior probability of biased
prob_14_fair = dbinom(14, 20, .5) * .90
prob_14_biased = dbinom(14, 20, .74) * .10
# poisson; simulate with binomial where probability is very low / rare event
# so, n is large and p is small
binom = rbinom(100000, 1000, .001)
hist(binom, breaks=30)


binom2 = rbinom(1000000, 1000, .002)
hist(binom2, breaks=30)
mean(binom2)
1000 * .002

?dpois
poisson_sample <- rpois(100000, 2)
mean(poisson_sample == 0)
dpois(0, 2)

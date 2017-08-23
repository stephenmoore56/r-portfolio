# simulations from the normal and binomial distributions
binom_sample <- rbinom(100000, 1000, .2)
normal_sample <- rnorm(100000, 200, sqrt(160))

# Use binom_sample to estimate the probability of <= 190 heads
mean(binom_sample <= 190)

# Use normal_sample to estimate the probability of <= 190 heads
mean(normal_sample <= 190)

# Calculate the probability of <= 190 heads with pbinom
pbinom(190, 1000, .2)

# Calculate the probability of <= 190 heads with pnorm
?pnorm
pnorm(190, 200, sqrt(160))

flips = rbinom(100000, 1000, .5)
hist(flips, breaks=300)
norms = rnorm(1000000, 500, sqrt(500 * .5 * .5))
hist(norms, breaks=300)

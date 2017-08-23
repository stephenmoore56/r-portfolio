flips = rbinom(100, 1, .1)
which(flips == 1)[1]
trials = replicate(100000, which(rbinom(100, 1, .1) == 1)[1])
hist(trials, breaks=100)
str(trials)
gen_trials = rgeom(100000, .1)
hist(gen_trials, breaks=100)
mean(gen_trials)
class(gen_trials) == class(trials)
str(gen_trials) == str(trials)
mean ~ 1/p - 1

# Simulate 100 instances of flipping a 20% coin
flips <- rbinom(100, 1, .20)

# Use which to find the first case of 1 ("heads")
which(flips == 1)[1]
trials = replicate(100000, which(rbinom(100, 1, .2) == 1)[1])
mean(trials)
hist(trials, breaks=100)

# Existing code for finding the first instance of heads
which(rbinom(100, 1, .2) == 1)[1]
# Replicate this 100,000 times using replicate()
replications <- replicate(100000, which(rbinom(100, 1, .2) == 1)[1])
# Histogram the replications with qplot
library(ggplot2)
qplot(replications, bins=100)

# Find the probability the machine breaks on 5th day or earlier
pgeom(4, .1)
# Find the probability the machine is still working on 20th day
1 - pgeom(19, .1)

# Calculate the probability of machine working on day 1-30
still_working <- 1 - pgeom(0:29, .10)
# Plot the probability for days 1 to 30
qplot(1:30, still_working)

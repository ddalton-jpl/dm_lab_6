install.packages("arules")

library(arules)

# Implement arules
data <- read.transactions("data.csv", sep = ",")

# Generate rules
rules <- apriori(data, parameter = list(supp = 0.01, conf = 0.5))

# View rules
inspect(rules)
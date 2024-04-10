#import the dplyr library
library(readxl)
library(car)

df = read.csv("Levene.csv", sep=';')
df$Tratamiento <- as.factor(df$Tratamiento)

# Using leveneTest()
result = leveneTest(df$Locomocion, df$Tratamiento, center=mean)

# print the result
print(result)
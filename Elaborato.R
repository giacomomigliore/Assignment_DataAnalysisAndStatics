library(rmf)
print("Esercizio 1")
frequenze(wvs$v93)
media(wvs$v93)
mediana(wvs$v93)
varianza(wvs$v93)
sd(wvs$v93, na.rm=T)

print("Esercizio 2")
by(wvs$v93, wvs$v235, mean, na.rm = T)

print("Esercizio 3")
boxplot(wvs$v93~wvs$v235)

print("Esercizio 4")
cov(wvs$v93, wvs$v68, use="complete.obs")
cor(wvs$v93, wvs$v68, use="complete.obs")

print("Esercizio 5")
dado <- c(1:6)
sum(sample(dado, 47, replace = T))
nrip <- 100000
prove <- matrix(sample(dado, size = 47 * nrip, replace = T), ncol= 47)
somme <- apply(prove, 1, sum)
length(somme[somme > 152]) / length(somme)

print("Esercizio 6")
sum(dbinom(c(9:18), 18, 0.6))

print("Esercizio 7")
ProbNorm(mu = 179, sigma = 10, a = 164.3, color = "red")

print("Esercizio 8")
set.seed(345126)
x <- sample(c(0:9),size=100,replace=TRUE)
media(x)
sum(x)/length(x)
sum(x-media(x))
sum((x-media(x)^2)) < sum((x-2)^2)


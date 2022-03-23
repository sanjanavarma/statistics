chiccscore <- read.table("D:/Parvathi_Sanjana_IIP/CHICCscore.txt", header=T, sep="\t")
chiccscore

plot(x = chiccscore$CHICC, y = chiccscore$ROM,
     xlab = "CHICC",
     ylab = "ROM",
     main = "CHICC vs ROM"
)

fm1 <- lm(ROM ~ CHICC, data=chiccscore)
summary(fm1)
fm2 <- lm(ROM~CHICC+I(CHICC*CHICC),chiccscore)
summary(fm2)
anova(fm1,fm2)



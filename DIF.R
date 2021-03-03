

#---------DIF----------#



library('lordif') 
library('Hmisc')
library('mirt')
library('stats4')
library('lattice')
library('rms')


####################################
RawData <- read.csv("R_DIF_cancer.csv")

summary(RawData)
head(RawData)

RawData[RawData==999] <-NA

cancer <-RawData$cancer

RespQ1 <- RawData[, c(3:6)]
CancerDIF1 <-lordif(RespQ1, cancer, criterion = "Chisqr", alpha = 0.01,  minCell=5)
print(CancerDIF1)
summary(CancerDIF1)


#RespQ1 is one domain.  Do the same other domains 
# c(3:6) tells the columns where the variables for domain RespQ1 are located

q()
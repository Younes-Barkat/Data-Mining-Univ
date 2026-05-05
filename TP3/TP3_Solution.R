rm(list=ls()) 
install.packages("arules")
library(arules)
str(Titanic) 
df <- as.data.frame(Titanic) 
head(df) 
titanic.raw <- NULL
for(i in 1:4) { 
  titanic.raw <- cbind(titanic.raw, rep(as.character(df[,i]), df$Freq)) 
} 
titanic.raw <- as.data.frame(titanic.raw) 
names(titanic.raw) <- names(df)[1:4] 
dim(titanic.raw) 
str(titanic.raw) 
head(titanic.raw) 
summary(titanic.raw) 
rules.all <- apriori(titanic.raw) 
rules.all 
inspect(rules.all) 
rules <- apriori(titanic.raw, control = list(verbose=F),parameter = list(minlen=2, supp=0.005, conf=0.8),appearance = list(rhs=c("Survived=No", "Survived=Yes"),default="lhs"))                  
quality(rules) <- round(quality(rules), digits=3) 
rules.sorted <- sort(rules, by="lift") 
inspect(rules.sorted) 

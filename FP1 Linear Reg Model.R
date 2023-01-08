Car_Dataset <- read_excel("~/Desktop/FP1/Car Dataset.xlsx")
View(Car_Dataset)    
summary(Car_Dataset)
library(ggplot2)
ggplot(data = Car_Dataset, aes(x = News, y = Sales)) +geom_point() + geom_smooth(method = "lm")

cov(Car_Dataset$Sales,Car_Dataset$News)

cor(Car_Dataset$Sales,Car_Dataset$News) 

reg <- lm(formula =Sales ~ News, data = Car_Dataset)
summary(reg)

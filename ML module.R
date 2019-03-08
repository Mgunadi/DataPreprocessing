library(readr)
library(dplyr)
library(tidyr)

stores <- read_csv("stores.csv",col_names = TRUE)

?read_csv

stores[duplicated(stores$Store),]


test <- read_csv("testing.csv")
train <- read_csv("training.csv")

wilt <- train %>% left_join(train, by="class")
wilt <- train %>% bind_rows(test)

wilt$Mean_Green %>% boxplot(main = "Box Plot of mean Green Value", ylab = "Mean (G)")

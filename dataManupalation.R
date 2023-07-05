library(dplyr)
Laptop <-read.csv("/Users/samruddhikale/Desktop/Dataset/Laptop.csv")
View (Laptop)
#column extarct

Laptop %>% select(1,2) ->laptop_1_2. #pipe operator joins select function & data frame
View(laptop_1_2)


Laptop %>% select(1:5) ->laptop_1_5
View(laptop_1_5)

#column extract with name letter start with/end with,here that is column Processor_Gen

Laptop %>% select(ends_with("n"))->laptop_n
View(laptop_n)

#filter

Laptop %>% filter(Company=="APPLE") ->lapto_apple
View(laptop_apple)

Laptop %>% filter(Rating>4.0) ->laptop_rating
View(laptop_rating)


#filter using 2 condition

Laptop %>% filter(Brand=="APPLE" & Price>50000)->laptop_B_P
View(laptop_B_P)

#combining filter & select
Laptop %>% select("Brand","Price","RAM") %>% filter(Brand=="DELL")->laptop_s_f
View(laptop_s_f)


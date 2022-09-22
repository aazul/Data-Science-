# Logical comparisons 
#1.
#Read the CSV file with trait plant data using the function read.csv 
#and assign it to an object called data_table
read.csv("Traitplantdatafordryad.csv") 
data_table <- read.csv("Traitplantdatafordryad.csv")

#2
#Subset your data table and create an object called 
#all_dispersal_modes that contains all rows from column “dispersal mode”.

all_dispersal_modes <- (data_table[,4])

#3. What is the class of this output? Logical 
#3. What is it telling you about dispersal mode? All true are lemurs and the false are not 
all_dispersal_modes == "lemur" 
all_dispersal_modes
#4. 
data_table_lemur <- all_dispersal_modes == "lemur"
#which words are equal to lemur# logical vector 
data_table_lemur <- (data_table[all_dispersal_modes == "lemur" , ])
#5.
#How many plant species are dispersed by lemurs? 91 obtained by nrow function
class(data_table_lemur)
View(data_table_lemur)
nrow(data_table_lemur) 
#6
#6.1 how many plant species in data_table are dispersed by birds? 8 
all_dispersal_modes == "birds" 
data_table_bird <- (data_table[all_dispersal_modes == "bird" , ])
nrow(data_table_bird)

#6.2 how many plant species have an average height above 10? 138
all_average_heights <- data_table[, 9]
height_above_ten <- (data_table[all_average_heights > 10 , ])
nrow(height_above_ten)
#6.3 how many plant species have an average height exactly equal to 10? 3 
all_average_heights <- data_table[, 9]
equals_ten <- (data_table[all_average_heights == 10 , ])
nrow(equals_ten)
#6.4 how many plant species have an average height below 10? 16 
all_average_heights <- data_table[, 9]
height_under_ten <- (data_table[all_average_heights < 10 , ])
nrow(height_under_ten)
#6.5 how many plant species belong to the family Lauraceae? 17 
all_families <- data_table[, 3]
family_lauraceae <- (data_table[all_families == "Lauraceae", ])
nrow(family_lauraceae)


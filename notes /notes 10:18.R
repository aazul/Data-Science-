library(dplyr)
#joining tables together 

surveys <- read.csv("surveys.csv")

species <- read.csv("species.csv")
plots <- read.csv("plots.csv")
# 3 primary arguments first table second table and the columnbs we want to join 
#them by in quotations any time there is a null or value that doesnt match anything in the 
#species_ id value get dropped 
combined <- inner_join(surveys, species, by = "species_id")

#combining data from more than two tables using joining in dplyr
#first vombinre two tables together then we use the resulting table and we combie it with 
#a third table we can keep doing that untile we combine all tables together that we need for our annalysis 
surveys_species <- inner_join(surveys, species, by = "species_id")
portal_full <- inner_join(surveys_species, plots, by = "plot_id")

#Relationship between vectors and data frames 
surveys <- read.csv("surveys.csv")
#extracting a colum into a vector using the dollar sign 
surveys$species_id
surveys[["species_id"]]

# vectors 
sites <- c("a", "b", "c", "d")
density <- c(2.8, 3.2, 1.5, 3.8)

# to create a data frame from the vectors 

density_data <- data.frame(sites, density)

#if we have a column that we want to add but we only want to add a single value for that whole column 
#for example all the data was created in the same yeart and we need a column with that year 

density_data_yeardensity_data <- data.frame(year = 2000, sites, density)

getwd()

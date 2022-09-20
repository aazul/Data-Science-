     
 #Group activity: absolute and relative paths#
#Did you use relative or absolute paths?
# we all used relative paths to save the subsets of the data tabele


#If you all used the absolute path to save any CSV file,
#what does the path look like? Do you all have the same path?
#The path starts at the root 
#the paths would all look different based on our names places where doc was saves etc. 
#an absolute path  for me would look like 
#"/Users/atziri/Bio 195-197/Data Science/first_subset.csv"

#What are the differences?
#the difference include our user names and the name of the folders used 

#If you all used relative paths to save any of your CSV files,
#what does the path look like? Do you all have the same path? 

#we all have the same path for for the relative paths 
#wite.csv(first_subset, file = first_subset.csv) 
#What are the differences?
#there are no differences 

#Write the data_table object as a CSV file in your computer’s home directory
#using an absolute path and a relative path.3 
read.csv("Traitplantdatafordryad.csv") 
datatable <- read.csv("Traitplantdatafordryad.csv")

write.csv(datatable, file = "/Users/atziri/Bio 195-197/Data Science/scripts/datatable.csv") # project home directory 

#Relative for the computers home directory 
setwd("~/")
#Relative for the file  
write.csv(datatable, file ="datatable.csv")

#absolute path for the computers home directory 
setwd("/Users/atziri/Bio 195-197/Data Science")

# relative path.for the project 
write.csv(datatable, file ="datatable.csv")

#absolute Path 
write.csv(datatable, file = "~/datatable.csv")

#relative Path 
write.csv(datatable, file = "datatable.csv")

#Write the data_table object as a CSV file in your project’s 
#home directory using an absolute path and a relative path.

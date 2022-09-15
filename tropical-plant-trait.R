# setting the working directory where the file is
#Reading the csv 
read.csv("Traitplantdatafordryad.csv")

getwd()

unique(x=)
#option dash <- 
datatable <- 
  datatable <- read.csv("Traitplantdatafordryad.csv")
# explore the head of datatable 
head(datatable)
#to see all the rows you leave the first before the commma empty 
datatable[,3]
# gives us the unique family found 
unique(x= datatable[,3])

uniquefamilies <- unique(x= datatable[,3])

length(uniquefamilies) #there are 157 species in each family 

datatable[,1] #this will give me the species column 

unique(x=datatable[,1]) 
#157 

length(datatable)
length(datatable[,1])
length(unique(datatable[,1]) ) #putting two commands into 1 

datatable[, 4]
unique(x =datatable[, 4])
uniquedispersalmode <- unique(x =datatable[, 4])
length(uniquedispersalmode)
# 5

datatable[, 5]
unique(x =datatable[, 5])
uniquefruitcolors <- unique(x =datatable[, 5])
length(uniquefruitcolors)
# 13

mean(datatable$fruit_width)
summary(datatable$fruit_width)

mean(datatable$fruit_width, na.rm=TRUE)
# This is the average for the fruit width 14.625. Yes the mean is the same 
#in the summary and the mean command one is just rounded but i manually did that 
#for the mean 
summary(datatable$fruit_length)
# the average fruit length in cm 21.175 
firsttenrows <- datatable[1:10, ]
firsttenrows
write.csv(x= firsttenrows)


last20rows <- datatable[137:157,]
last20rows


specificrows <- datatable[c(12, 17, 23, 145),]
specificrows

activity4 <-datatable[c(1:10, 12, 17, 23, 145),]
activity4

activity5 <- datatable[ ,1:5]
activity5

activity6 <- datatable[, 14:13]
activity6
write.csv(activity6)


seventhactivity <- datatable[,c(3, 5 , 13)]
seventhactivity

activity8 <- datatable[c(12, 17, 23, 145), 1:5]
activity8

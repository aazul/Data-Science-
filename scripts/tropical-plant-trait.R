# setting the working directory where the file is
#Reading the csv 
read.csv("Traitplantdatafordryad.csv")

getwd()

unique(x=)
#option dash <- 
datatable <- 
  datatable <- read.csv("Traitplantdatafordryad.csv")
# explore the head of data table 
head(datatable)
#to see all the rows you leave the first before the comma empty 
datatable[,3]
# gives us the unique family found 
unique(x= datatable[,3])

uniquefamilies <- unique(x= datatable[,3])

length(uniquefamilies) #there are 44 unique families 
uniquefamilies
#44

datatable[,1] #this will give me the species column 
unique(x=datatable[,1]) 
#157 

length(datatable)
length(datatable[,1])
length(unique(datatable[,1]) ) #putting two commands into 1 
#157 

datatable[, 4]
unique(x =datatable[, 4])
uniquedispersalmode <- unique(x =datatable[, 4])
length(uniquedispersalmode) # there are 5 unique fruit colors
# 5

datatable[, 5]
unique(x =datatable[, 5])
uniquefruitcolors <- unique(x =datatable[, 5])
length(uniquefruitcolors) # there are 13 unique fruit colors
# 13

mean(datatable$fruit_width) #gave me a NA answer
summary(datatable$fruit_width)


#Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 #1.000   6.945  12.120  14.625  18.445  64.540      38 


mean(datatable$fruit_width, na.rm=TRUE)
# This is the average for the fruit width 14.625. Yes the mean is the same 
#in the summary and the mean command one is just rounded but i manually did that 
#for the mean command 

summary(datatable$fruit_length)
# the average fruit length in cm 21.598 

mean(datatable$fruit_length, na.rm=TRUE)
#21.5975, both commands summary and mean give the same mean however
#one is rounded and the other isn't.
?cm #help for the cm command 
cm(21.598)
#this gives us the amount if centimeters 
#54.85892

#subset containing 10 rows 
firsttenrows <- datatable[1:10, ]
firsttenrows
write.csv(x= firsttenrows)
#it gave me all ten rows but its too much to copy and paste all of it :)
# growth_rate_.regeneration_strategy.. longevity
#1                                  slow   25 - 50
#2                                  slow      < 25
#3                                  slow      < 25
#


#A subset of datatable that contains the last 20 rows.
last20rows <- datatable[137:157,]
last20rows

# gave me all 20 values but i just put the first three its a lot to copy 
#growth_rate_.regeneration_strategy.. longevity
#137                                 fast   25 - 50
#138                                 fast   25 - 50
#139                                 slow   25 - 50

#A subset of datatable that contains rows 12, 17, 23 and 145.
specificrows <- datatable[c(12, 17, 23, 145),]
specificrows
#12  tabernaemontana_retusa           Kaboka Apocynaceae          lemur
#17       breonia_decaryana     Valompangady   Rubiaceae          lemur
#23          lemyrea_krugii          Tomenjy   Rubiaceae          lemur
#145       cryptocarya_sp_3 Tavolomolaliambo   Lauraceae          lemur
#fruit_color fruit_length fruit_width seed_size average_height
#12        black        54.55       31.46    medium          12.11
#17        brown         7.10        6.76     small          16.63
#23   red purple        12.20        8.94     large          13.29
#145       brown           NA          NA     large          15.03
# these are only half of the answer the rest can be seen if you run the code :)



#A subset of datatable that contains the first 10 rows 
#and rows 12, 17, 23 and 145.
activity4 <-datatable[c(1:10, 12, 17, 23, 145),]
activity4
write.csv(activity4)
#this is only the first part of the answer it was a really
#long result on the console 
#                   genus_species             vernacular.name
#1             rhodocolea_racemosa                  Zahatavika
#2                  nuxia_capitata                   Lambinana
#3                   nuxia_coricea                 Lambinanala
#4               nuxia_pachyphylla Lambinana ranjonangalampona
#5            noronhia_grandifolia               solaitra mena
#6          noronhia_incurvifolius              solaitra fotsy
#7             noronhia_introversa                    solaitra
#8           petchia_cryptophlebia                    Kabokala
#9                  carissa_edulis                       Fatsy
#10  craspidospermum_verticillatum                    Vandrika
#12         tabernaemontana_retusa                      Kaboka
#17              breonia_decaryana                Valompangady
#23                 lemyrea_krugii                     Tomenjy
#145              cryptocarya_sp_3            Tavolomolaliambo

#A subset of datatable that contains the first 5 columns and all rows.
activity5 <- datatable[ ,1:5]
activity5
##this command has an output that is way too long however it does give me
#the first 5 columns and all rows

#A subset of datatable that contains the last 2 columns and all rows.
activity6 <- datatable[, 14:13]
activity6
write.csv(activity6)
#                           genus_species             vernacular.name
#1                    rhodocolea_racemosa                  Zahatavika
#2                         nuxia_capitata                   Lambinana
#3                          nuxia_coricea                 Lambinanala
#these are only the first three outputs
#the answer was also too long to paste it all 


#A subset of datatable that contains that contains 
#columns with “family”, “fruit_color” and “growth_rate”, and all rows.
seventhactivity <- datatable[,c(3, 5 , 13)]
seventhactivity
#              family  fruit_color growth_rate_.regeneration_strategy..
#1       Bignoniaceae                                              slow
#2   Scrophulariaceae                                              slow
#3   Scrophulariaceae                                              slow
#       ... only part of the final output 


#A subset that contains the first 5 columns and rows 12, 17, 23 and 145.
activity8 <- datatable[c(12, 17, 23, 145), 1:5]
activity8
#           genus_species  vernacular.name      family dispersal_mode fruit_color
#12  tabernaemontana_retusa           Kaboka Apocynaceae          lemur       black
#17       breonia_decaryana     Valompangady   Rubiaceae          lemur       brown
#23          lemyrea_krugii          Tomenjy   Rubiaceae          lemur  red purple
#145       cryptocarya_sp_3 Tavolomolaliambo   Lauraceae          lemur       brown




# Data Frame # list of vectors can see in the environment tab 

n = c(2, 3, 5)
s = c("aa", "bb", "cc")
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)
# df is the data frame containing three vectors n, s, b.

# Built-in Data Frame #
mtcars
#Data popped up 

mtcars[1, 2] # first row, second column of mtcars.
#[1] 6

mtcars["Mazda RX4", "cyl"] #row and column names
#[1] 6

nrow(mtcars)  #number of data rows in the data frame
# number of data rows [1] 32

ncol(mtcars) #number of columns of a data frame
#number of columns [1] 11

help("mtcars")
#further details pop up on the help console 
[, 1]	mpg	Miles/(US) gallon
[, 2]	cyl	Number of cylinders
[, 3]	disp	Displacement (cu.in.)
[, 4]	hp	Gross horsepower
[, 5]	drat	Rear axle ratio
[, 6]	wt	Weight (1000 lbs)
[, 7]	qsec	1/4 mile time
[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
[, 9]	am	Transmission (0 = automatic, 1 = manual)
[,10]	gear	Number of forward gears
[,11]	carb	Number of carburetors



# Preview #
head(mtcars)
# Previews the data frame  as shown below       
                  mpg cyl disp  hp drat    wt
Mazda RX4         21.0   6  160 110 3.90 2.620
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875
Datsun 710        22.8   4  108  93 3.85 2.320
Hornet 4 Drive    21.4   6  258 110 3.08 3.215
Hornet Sportabout 18.7   8  360 175 3.15 3.440
Valiant           18.1   6  225 105 2.76 3.460
                    qsec vs am gear carb
Mazda RX4         16.46  0  1    4    4
Mazda RX4 Wag     17.02  0  1    4    4
Datsun 710        18.61  1  1    4    1
Hornet 4 Drive    19.44  1  0    3    1
Hornet Sportabout 17.02  0  0    3    2
Valiant           20.22  1  0    3    1

# DATA FRAME COLUMN VECTOR #

mtcars[[9]]
[1] 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0
[24] 0 0 1 1 1 1 1 1 1 # retrieved the 9th column vector 

mtcars[["am"]] 
[1] 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0
[24] 0 0 1 1 1 1 1 1 1 # retrieved the same column vector by its name. 

mtcars$am 

[1] 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1
[27] 1 1 1 1 1 1 # retrieved the same column vector 

mtcars[,"am"] 

[1] 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1
[27] 1 1 1 1 1 1# retrieved the same column vector 


# DATA FRAME COLUMN SLICE #

# Numeric Indexing 

mtcars[1] 
# the first column of the built-in data set mtcars.
# some of the values that this function retrieved 
                    mpg
Mazda RX4           21.0
Mazda RX4 Wag       21.0
Datsun 710          22.8
Hornet 4 Drive      21.4
Hornet Sportabout   18.7

# Name Indexing 
# retriving the same column slice by its name 
mtcars["mpg"]  
                    mpg
Mazda RX4           21.0
Mazda RX4 Wag       21.0
Datsun 710          22.8
Hornet 4 Drive      21.4
Hornet Sportabout   18.7

#retreve the data frame slice with the two columns mpg and hp 
mtcars[c("mpg", "hp")]

                    mpg  hp
Mazda RX4           21.0 110
Mazda RX4 Wag       21.0 110
Datsun 710          22.8  93
Hornet 4 Drive      21.4 110
Hornet Sportabout   18.7 175


# Data Frame Row Slice #

# Numeric Indexing 
#a row record of the built-in data set mtcars
mtcars[24,] 
            mpg cyl disp  hp drat   wt  qsec vs am gear
Camaro Z28 13.3   8  350 245 3.73 3.84 15.41  0  0    3
            carb
Camaro Z28    4

mtcars[c(3, 24),] 

# Numeric Indexing
            mpg cyl disp  hp drat   wt  qsec vs am gear
Datsun 710 22.8   4  108  93 3.85 2.32 18.61  1  1    4
Camaro Z28 13.3   8  350 245 3.73 3.84 15.41  0  0    3
            carb
Datsun 710    1
Camaro Z28    4


# Name Indexing - retrieve a row by its name 

mtcars["Camaro Z28",] 
            mpg cyl disp  hp drat   wt  qsec vs am gear
Camaro Z28 13.3   8  350 245 3.73 3.84 15.41  0  0    3
            carb
Camaro Z28    4
# Name Indexing
#we can pack the row names in an index vector
#to retrieve multiple rows.
mtcars[c("Datsun 710", "Camaro Z28"),] 
            mpg cyl disp  hp drat   wt  qsec vs am gear carb
Datsun 710 22.8   4  108  93 3.85 2.32 18.61  1  1    4    1
Camaro Z28 13.3   8  350 245 3.73 3.84 15.41  0  0    3    4

# Logical Indexing- retrieve rows with a logical index vector

L = mtcars$am == 0 # 
#TRUE if the car has automatic transmission , and FALSE if otherwise.
#help column gives us [, 9]	am	Transmission (0 = automatic, 1 = manual)

L
[1] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[15]  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE
[29] FALSE FALSE FALSE FALSE


mtcars[L,] # gives us a list of vehicles with automatic transmission 
# these are the first on the list 
                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2

mtcars[L,]$mpg # - gives us a list of the gas mileage data for automatic transmission

[1] 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2 10.4 10.4 
14.7 21.5 15.5 15.2
[18] 13.3 19.2


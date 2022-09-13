download.file ( "https://ndownloader.figshare.com/files/2292169", destfile = "raw-data/my-data-september.csv")
# Function from tidyverse package
install.packages("tidyverse")
Yes
library(tidyverse)


surveys_200 <- surveys[200, ]

last_rows <- nrow(surveys)

surveys_last <- surveys[n_rows, ]
                        
surveys_middle <- surveys[n_rows 34786/ 2, ]

surveys_head <- surveys[-(7:last_rows), ]


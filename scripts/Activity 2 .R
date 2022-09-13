# Challenge 1- ls Reading Comprehension

#ls reading comprehension what command(s) will result in the following output:

pnas_sub/ pnas_final/ original/
  # notes to keep in mind to answer this 
  
  ## -r tells ls to display things in reverse order, 
##by using the -F option which tells ls to classify the output by adding a, 
#marker to file and directory names to indicate what they are
  
  
#1. ls pwd we're not looking for the name of a directory this is what pwd displays 
  
#2. ls -r -F   # this doesnt provide a directory argument but 
  #ls lists files in the current directory and
  #-r tells ls to display things in reverse order,  

#3.ls -r -F /Users/backup #THis provides the steps users than backup 
  #-r tells ls to display things in reverse order, 
  #-F option which tells ls to classify the output by adding a, 
#marker to file and directory names to indicate what they are
  
#Answer  - both commands 2 and 3 will result in the
                                              #pnas_sub/ pnas_final/ original/ 
  
bash-3.2$ ls pwd
ls: pwd: No such file or directory
bash-3.2$ ls -r -F
thesis_backup/		statics.txt		LittleWomen.txt
thesis/			quotes.txt
statistics.txt		haiku.txt
bash-3.2$ ls -r -F /Users/backup
ls: /Users/backup: No such file or directory
bash-3.2$ ls -r -F /Users/
  atziri/	Shared/	Guest/
  bash-3.2$ pwd
/Users/atziri/Desktop/shell-lesson-data/exercise-data/writing
bash-3.2$  ls -r -F /Users/atziri/Desktop/shell-lesson-data/exercise-data/writing
thesis_backup/		statics.txt		LittleWomen.txt
thesis/			quotes.txt
statistics.txt		haiku.txt
# i used my own files to prove this 
  
                 # Challenge 2 Relative Path Resolution
#
#Using the filesystem diagram below, if pwd displays /Users/thing, 
#what will ls -F ../backup display?
 
#1.
../backup: No such file or directory # this cant be because in the picture there 
# is a file named backup 

#2. 
2012-12-01 2013-01-08 2013-01-27 # based on the picture these are the file list under
# Users/thing/backup

#3
2012-12-01/ 2013-01-08/ 2013-01-27/ # based on the picture these are the file list under
# Users/thing/backup
 
#4.
   original/ pnas_final/ pnas_sub/ # this will work because they are the files under
  #/Users/backup/. which is what ls -F ../backup refers to 

  #           Answer is #4 
  
  # Challenge 3 Relative Path Resolution
  

  bash-3.2$ cd/Users/atziri/Desktop/shell-lesson-data/exercise-data
bash: cd/Users/atziri/Desktop/shell-lesson-data/exercise-data: No such file or directory
bash-3.2$ cd /Users/atziri/Desktop/shell-lesson-data/exercise-data
bash-3.2$ pwd
/Users/atziri/Desktop/shell-lesson-data/exercise-data
bash-3.2$ mkdir backup
bash-3.2$ cp creatures/minotaur.dat creatures/unicorn.dat backup/
  bash-3.2$  cd creatures
bash-3.2$ ls -F
basilisk.dat	minotaur.dat	unicorn.dat
bash-3.2$ cp minotaur.dat unicorn.dat basilisk.dat ###when given three file names there is an error 
cp: basilisk.dat is not a directory
# the destination directory must be the last argument


#             Challenge 4 Organizing Directories and Files

# outcome wanted 
$ ls -F
analyzed/   raw/
$ ls analyzed
fructose.dat    sucrose.dat

# We will need to use the bash comand $ mv *.dat analyzed #this will
#move the fructose.dat and sucrose.dat to the analyzed directory.when using 
# the *.dat after mv will match all files that end in .dat
#for this we will need to use mv which is named move with 
#just the name of a directory as the
#second argument to tell mv that we want to keep the filename 
#but put the file somewhere new.

# mv [old] [new] moves (renames) a file or directory.
#* matches zero or more characters in a filename, so *.txt matches all files ending in .txt.

#adding a comment 



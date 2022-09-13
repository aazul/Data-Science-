#                             ACTIVITY #1 
  #Copying files and directories#
  
  #cp comand works like mv except,it copies a file instead of moving it
  #We can check that it did the right thing using the ls command 
# Challenge 1 
#Suppose that you created a plain-text file in your current directory 
#to contain a list of the statistical tests you will need to do to analyze
#your data, and named it: statstics.txt
#######challenge 1 #######
#After creating and saving this file you realize you misspelled the filename!
#You want to correct the mistake, which of the following commands could you 
#use to do so?

# answer# 
#2. mv statstics.txt statistics.txt <----- this is the one that would work to 
#rename the file
#
mv statstics.txt statistics.txt
mv: statstics.txt: No such file or directory
#this changed the name on the directory 

Last login: Tue Sep 13 11:07:36 on ttys000
atziri@ucmerced-10-34-65-6 ~ % pwd
/Users/atziri
atziri@ucmerced-10-34-65-6 ~ % /Users/atziri/Desktop/shell-lesson-data
zsh: permission denied: /Users/atziri/Desktop/shell-lesson-data
atziri@ucmerced-10-34-65-6 ~ % pwd 
/Users/atziri
atziri@ucmerced-10-34-65-6 ~ % /Users/atziri//Desktop/shell-lesson-data
zsh: permission denied: /Users/atziri//Desktop/shell-lesson-data
atziri@ucmerced-10-34-65-6 ~ % bash

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
bash-3.2$ pwd
/Users/atziri
bash-3.2$ /Users/atziri/Desktop/shell-lesson-data
bash: /Users/atziri/Desktop/shell-lesson-data: is a directory
bash-3.2$ pwd
/Users/atziri
bash-3.2$ cd /Users/atziri/Desktop/shell-lesson-data
bash-3.2$ pwd
/Users/atziri/Desktop/shell-lesson-data
bash-3.2$ cd exercise-data/writing/
  bash-3.2$ ls -F
LittleWomen.txt		quotes.txt		thesis/
  haiku.txt				thesis_backup/
  
  bash-3.2$ ls statstics.txt
statstics.txt
bash-3.2$ cp statstics.txt statistics.txt
bash-3.2$ ls  statstics.tx
ls: statstics.tx: No such file or directory
bash-3.2$  statstics.tx
bash: statstics.tx: command not found
bash-3.2$  statstics.tx
bash: statstics.tx: command not found
bash-3.2$ mv statstics.txt statistics.txt
bash-3.2$ nano statstics.txt
bash-3.2$ nano statistics.txt
bash-3.2$ mv statstics.txt statistics.txt
mv: statstics.txt: No such file or directory
bash-3.2$ nano statics.txt 
bash-3.2$ 
  bash-3.2$ nano statics.txt 
bash-3.2$  mv statstics.txt statistics.txt
mv: statstics.txt: No such file or directory
bash-3.2$ nano statstics.tx
bash-3.2$  nano statstics.tx
bash-3.2$  mv statstics.txt statistics.txt
mv: statstics.txt: No such file or directory
bash-3.2$ bash-3.2$ ls -F
LittleWomen.txt	    thesis_backup/
  haiku.txt		statistics.txt
quotes.txt		thesis/
  
  
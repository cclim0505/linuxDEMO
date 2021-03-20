# Bash

## We have covered

We have covered the following items in workshop 1.

### Navigating & Basics

+ `date`
+ `cal`
+ `who `
+ `whoami`
+ `echo`
+ `pwd`
+ `ls`
+ `cd`
+ `mkdir`
+ `rmdir`
+ `rm`
+ `touch`
+ `cp`
+ `mv`
+ `history`

### Man pages
Use the following to see what options or arguments a command receive.

+ `man`
+ --help options

### Home directory, up one level, and back to previous directory

+ `cd`
+ `cd .`
+ `cd ..`
+ `cd -`

Can you tell the different results for `.`, `..` and `-` as argument for the `cd` command?

### Wild cards
Use `*` and `?` for specific commands, eg `ls *.txt` to find files that end with
`.txt` extension.

### Working with files

+ `cat`
+ `head`
+ `tail`
+ `wc`
+ `file`
+ `more`
+ `less`
+ `find`
+ redirection `>`

`Tab` key is useful for auto completion.
Try `cd`, then `cd D` and press `Tab` to see the results.
You should see the command prompt will list `Documents`, `Desktop` & `Download`.

### Quitting the terminal
You can type `exit` or press `Ctrl + d` to quit your terminal.
  
# Tutorial

## 1 Basics

Try out the following commands

+ `echo Hello World`  # use shell or bash to print out a string
+ `pwd`                # print working directory
+ `whoami`            # literally 'who am I', check the current username
+ `ls -l`             # list files in the current directory
+ `cd Desktop`        # change directory into `Desktop`
+ `cd ..`             # go up one level
+ `cd ~`              # go to user's home directory
+ `cd /`            # go to root directory, 

In your home directory, type `cd D` and then hit `Tab` to see some results.

## 2 `ls`

Explore the following directories

+ `/etc`
+ `/var/log`
+ `/bin`
+ `/usr/bin`

For example, type `cd /usr/bin`.
The last two directories contain binaries of the commands available in your
system.

Use `ls` and see what's in them.

Use other options for the `ls` command to see different results, such as

+ `ls -alt`
+ `ls -lh`
+ `ls -R`
+ `ls -Sh`

## 3 Sample

### Preparation
Go to `Desktop` and type the following commands

```
wget https://github.com/cclim0505/linuxDEMO/archive/main.zip

unzip main.zip

cd linux DEMO-main/tutorial01

bash generate_files.sh
```

if `unzip` is not installed, install with `sudo apt install unzip` for
Ubuntu/Debian based systems. System will prompt for a password, which is the one
you used when creating your user or installing linux.

After the last command, use `ls` and you should see some new sample text files.

### Navigating and manipulating files & directories

Use `cat filename` to see what's inside the file.

Try `tac filename` and see what happens.

Type `rm sample_text?` to remove some of the sample files. Check with `ls`.

Type `bash generate_files.sh` again.

Type `mkdir folder_test`, then `ls`.

Type `mv sample_text? folder_test`, then `ls folder_test`.

## 4 `man` pages

Explore the `man` page of some of the commands we covered today, especially `ls`
`rm` `head` `less`.

Type `man ls` to look up details for the `ls` command.

## 5 The vim editor

Open up a terminal, type `vimtutor` and press `Enter` to start your first vim
tutorial.

Finish *vimtutor* at least once, it should take you about 30 minutes each round.

Type `:q` when you need to quit *vim*.


## 6 Python

Install python for your machine.

The terminal way is with `sudo apt install python3`.

After installation, type `python3` to interact with the python3 shell.
You can use python as a simple calculator.

Press `Ctrl + d` to quit, or type `quit()`.

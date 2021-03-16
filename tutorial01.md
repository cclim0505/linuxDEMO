# Bash

## 1

Try out the following commands

`echo Hello World`  # use shell or bash to print out a string

`pwd`                # print working directory
`whoami`            # literally 'who am I', check the current username
`ls -l`             # list files in the current directory

`cd Desktop`        # change directory into `Desktop`
`cd ..`             # go up one level
`cd ~`              # go to user's home directory
`cd /`            # go to root directory, 

In your home directory, type `cd D` and then hit `Tab` to see some results.

## 2

Explore the following directories
+ `/etc`
+ `/var/log`
+ `/bin`
+ `/usr/bin`
+ 
Use other options for the `ls` command to see different results, such as
+ `ls -alt`
+ `ls -lh`
+ `ls -R`
+ `ls -Sh`

## 3

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


# Vim

Open up a terminal, type `vimtutor` and press `Enter` to start your first vim
tutorial.

Finish up until Lesson 2 of *vimtutor*

Type `:q` when you need to quit *vim*.


# Python

Install python for your machine.

The terminal way is with `sudo apt install python3`.

After installation, type `python3` to interact with the python3 shell.

Press `Ctrl + d` to quit, or type `quit()`.

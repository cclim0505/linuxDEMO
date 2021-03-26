# vim

## We have covered

We have covered the following items in workshop 2.

### vim modes

+ **Normal**, navigation and base mode.
+ **Insert**, enables typing.
+ **Visual**, selecting texts.
+ **Replace**, replaces characters that are on the cursor.
+ **Command**, run vim language commands.
+ **Ex**, extension of command mode.

When in doubt, press `Esc` key to return to normal mode.

### Basic navigation

Some basic navigation in Normal mode.

+ `hjkl` as arrow key replacements
+ `w`, `e` & `b` for word, end and back
+ `gg` & `G` to go to beginning and end of file
+ `y` & `p` for yank(copy) and paste
+ `Ctrl + f` & `Ctrl + b ` to scroll forward and backward
+ `zz`, `zt` & `zb` to move focused line to the middle, top or bottom of screen.
+ `H`, `M` & `L` to move to top(High), middle(Middle) and bottom(Bottom) of screen.

In normal mode, type `:set number` and press enter to show number lines.
Similarly, use `:set number` to show relative lines.

### Basic editing

+ `i` for insert, goes into Insert mode
+ `a` for append, goes into Insert mode
+ `s` for substitute, goes into Insert mode
+ `x` to delete single character, stays in Normal mode
+ `r` to replace single character, stays in Normal mode
+ `o` to open new line, goes into Insert mode

You may also try what `I A S X R O` do and see the difference.

### Basic search

Use `/` for forward search, and `n` to hop cursor to next result.
Use `?` for forward search, and `N` to hop cursor to previous result.

Type `:set nohighlight` to undo search highlight.
Type `:set ignorecase` to ignore case while performing search.

### Basic command modes

+ `:w` to save file
+ `:e` to open a file
+ `:q` to quit vim
+ `:q!` to quit vim without saving
+ `:wq` to save file and quit

## Vim tutorial

Practice the above key presses until all the strokes and modes becomes second
nature.

It takes time to master vim keys, but once you do, you will realise the speed
benefits you get for code editing.

# Bash

## We have covered 

We have covered the following items in workshop 2.

### `.bashrc`

`.bashrc` is a hidden configuration file in `~`.

Supply `-a` to the `ls` command to show other hidden files.

Add `set -o vi` to force yourself to use vim mode while in bash.

To apply changes to `.bashrc`, type `source .bashrc`

### Aliases

An alias allows a custom name for a long command.
Some alias examples you can try:

+ `alias up='cd ..'`
+ `alias ...='cd ../../..'`
+ `alias gtDesk='cd ~/Desktop'`
+ `alias sbashrc='source ~/.bashrc'`


### Some useful commands with their options

+ `head -<number> filename`
+ `tail -<number> filename`
+ `tail -f filename`
+ `wc -l`
+ `du -hs`
+ `free -h`

### Navigating files & directories

The `tree` command lists directories, its subdirectories and files in a tree
format.

We explained what `~`, `.`, `..` &  `-` are in Linux directories and illustrated
the concept of absolute and relative path.

`cp -r ` and `rm -r ` can be used to copy and delete directories.

`rsync` command is useful for backups, example `rsync -avP source destination`

### Introducing grep

`grep` is tool to search for patterns of a given input.

For example:

+ `grep 'pattern' filename`
+ `grep -i 'pattern' filename`, ignore case
+ `grep -v 'pattern' filename`, invert match
+ `grep -n 'pattern' filename`, line numbers
+ `grep -c 'pattern' filename`, count matching lines


## Bash tutorial

Create a new directory `sampleDir` with its subdirectories and related files.

Use `touch` command to simply create empty files.

Once you are done you should have the following output when you type 
`tree sampleDir`.

```
sampleDir/
├── documents
│   ├── letters
│   │   ├── AMG.reply
│   │   └── no.JSK
│   ├── memos
│   │   ├── dact
│   │   └── plan
│   └── proposals
│       ├── new.hire
│       └── sys.A
└── programs
    ├── collect
    ├── mon
    └── wb

5 directories, 9 files
``` 

With this directory as an example, can you go through again the demo done in the
workshop? We covered

+ `cd ~`
+ `cd -`
+ `cd .`
+ `cd ..`
+ `ls {absolute path/relative path}`
+ `cp -r`
+ `rm -r`

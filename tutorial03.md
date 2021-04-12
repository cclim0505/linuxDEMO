We have covered the following items in workshop 3.

# Shell tools

Recall `*` and `?` for character substitution in the shell(terminal). What do they do?

## grep

The `grep` command is used to find matching patterns in files.

Eg, `grep "pattern" file1 file2` finds `pattern` in the files `file1` & `file2`
and prints them out on the screen.

Use double quotes `""` for your patterns in `grep` commands.

You can supply option `-i` to ignore case sensitivity in your grep search.

Multiple options can be used for a `grep` search,

eg, `grep -in "anchor" *` finds `anchor` in all the files of the current
directory (because of `*`), ignores case sensitivty (which includes `anchor`,
`Anchor`, even `ANCHOR` and `anCHOR`) and print out matching lines with line
numbers (because of `-n` option).

We have covered options 

+ `-i` ignore case sensitivity
+ `-n` print line numbers
+ `-c` count matches
+ `-v` invert search results
+ `-r` recursively search subdirectories, best used with `*`
+ `-l` print only matching file names
+ `-w` matching words only, not characters

Type `man grep` to read the manual page.



## redirections `>` and `>>`

`grep` command outputs results onto screen. To save results into a file, use `>`
followed by a file name.

Eg. `grep -in "word" file1 > result_file` will save search results in
`result_file`.

`>` rewrites contents of files without warning, use with caution on important
files.

To append (add something at the end of the file) use `>>`.

Eg, the following three commands will only save the last two output into file
`test`.

```
echo "Hello World!" > test
echo "Nice to meet you." > test
echo "Thank you." >> test

```

Try the above commands. Type `ls` to see wheter `test` is now present. 
Type `cat test` to see the contents of `test`.


## regular expressions

The patterns used in `grep` follow the rules of regular expressions
(regex).

The basic regex symbol we learned are square brackets `.` and `[]`.

`.` holds any single character in `grep` search.

Eg `grep -w "a.." file` will search for words like `and`, `are`, `ate`, etc (three
letter words that start with `a`). If command is used without `-w` option,
different result will appear.

`[]` holds any single character that appears inside the brackets.

If we extend the previous command to `grep -w "[ao].." file`, `grep` will search
for three letter words that start with either `a` or `o`, which means `and`,
`are`, `our`, `own` , etc will match if they are found.

Ask yourself, how is `.` in regex different from `?` in shell(terminal) ?
What does `.` mean in shell?

### Trivia

`grep` stands for `g/re/p`, which means `global`, `regular expressions`,
`print`.

`grep` command searches all lines (that's why `global`) that matches the regex
and prints them.

We will cover more regex in future workshops. It will be more powerful when
used with `sed` command. regex is also used in `vim` when in command mode for
advanced search and replace.


# vim

We extend the editing key-presses from workshop 2. We look at the capital
letters.

## Editing a line

+ `I` enter Insert mode at the first character of the line
+ `A` enter Insert mode at the last character of the line
+ `S` substitutes the whole line, i.e. deletes whole line and enter Insert mode at
  the beginning of the line
+ `X` backspace, stays in Normal mode
+ `R` goes into Replace mode
+ `O` to open new line above the current line, goes into Insert mode

## delete and change

Delete, `d` deletes an object while staying in Normal mode. 
`d` can be paired with a other keys.

+ `dw` deletes a word.
+ `dd` deletes the current line.
+ `dj` deletes current line and the next line.
+ `dgg` perform deletion from current line until the first line of file.
+ `dG` perform deletion from current line until the last line of file.

You may also try `d` combined with the other navigation keys.

Change, `c` deletes an object, then enters Insert mode.
Its syntax and possible combos are similar to `d`.

`D` deletes from cursor position to the end of line.
`C` deletes from cursor position to the end line, then enters Insert mode.

### delete as cut

Deleted objects are saved in vim registers (clipboard) and can be pasted later,
just like cut and paste.

A neat trick will be the key combo `ddp`.

`y` key presses are similar in syntax with `d` key presses, but instead of
deleting objects, they copy the objects.

### Combo with numbers

`vim` keystrokes can be paired with numbers to repeat the combos you desire.

For example.

+ `3j` moves down 3 lines.
+ `2s` deletes 2 characters, then enters Insert mode.
+ `10W` moves 10 WORDS across.
+ `5dd` deletes 5 lines, starting from current line.
+ `2cw` or `c2w` deletes 2 words, then enters Insert mode.
+ `10IA<Esc>` inserts 10 `A` characters at the beginning of line.
+ `4r1<Esc>` replaces 4 characters into `1` at current cursor.

Another useful one should be `30G` or `:30`, which essentially takes you to the
30th line.

Instead of memorising, teach your mind to think like the vim editor.
For example:

+ next [w]ord:                  `w`
+ [b]ack a word:                `b`
+ [10] [down] lines:            `10j`,      remember `hjkl`
+ [i]nsert text here:           `i`, `<ESC>` when done
+ [d]elete [5] [w]ords:         `d5w`
+ [5] times [d]elete [w]ord:    `5dw`
+ [20] [G]o to that line:       `20G`
+ [c]hange [w]ord:              `cw`, `<ESC>` when done
+ [dd]elete line:               `dd`
+ [p]aste here:                 `p`
+ [P]aste above line:           `P`
+ [A]ppend at end of line:      `A`, `<ESC>` when done

There's no vim tutorial for Workshop 3. If you can, practise again in
`vimtutor`.

# bash & `grep` tutorial

## list subdirectories
Which option of the `ls` command list subdirectories and its contents? List all
the files and subdirectories of `Tu03`. Use `man ls` to help you if you are not
sure. 

*Trivia:* `ls` *command is the analogue to* `dir` *command in MS-DOS*

## word count
In directory `Tu03`, use the `wc` command, with suitable options and input, try
to print out the following results. *Hint:*`*` *is useful.*

```
      5 verses/chorus
      5 verses/verse1
      5 verses/verse2
      5 verses/verse3
      5 verses/verse4
     31 AnchorSong
wc: verses: Is a directory
      0 verses
     29 WillYourAnchorHold
     85 total
```


## grep
Use `grep` to find four character words in `AnchorSong`. Your result should have
22 matching lines. You will notice how `grep` defines a word.

In directory `verse`, how do you print out all the contents of the files in that
directory? Your result should give 25 lines. You may check by adding `| wc -l`
at the end of your command.

In directory `verse`, use `grep` to find the lines that doesn't have the `W`
character (capital w) in all the files. Your result should give 17 lines.
That also means there are 8 lines with the character `W`. Can you use `grep`
also to count how many matching lines of `W` are in each of the files? Which
file doesn't have the character `W`?

In directory `Tu03`, find the two `?` characters in `WillYourAnchorHold` using
`grep`. Which lines are they in the file? Save your results in file
`question_result` with redirection.

In directory `Tu03`, try the command  `grep "[Aa]nchor" *`. Which option in
`grep` will give you similar results?

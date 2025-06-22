# Introduction to UNIX

UNIX is a multiuser, multitasking operating system developed in the 1970s by Bell Labs.  Licensed in 1975, UC Berkeley made enhancements and called it BSD (Berkeley Software Distribution), which it distributed to universities.   


## UNIX philosophies

* Do one thing and do it well - Write programs that do one thing and do it well. Write programs to work together. Write programs to handle text streams, because that is a universal interface.
* Everything is file - Ease of use and security are offered by treating hardware as a file.
* Store data and configuration in flat text files - Text file is a universal interface. Easy to create, backup, and move to another system.
* Use shell scripts to increase leverage and portability - Use shell scripts to automate common tasks across various UNIX / Linux installations.
* Chain programs together to complete a complex task - Use shell pipes and filters to chain small utilities that perform one task at a time.
* Choose portability over efficiency.
* Keep it Simple.





# The UNIX Filesystem

The __file__ is the unit of storage in UNIX.  A __directory__ (_folder_ in modern parlance) is a (special) file that contains information about other files.


![UNIX Directory Structure](images/filesystem.png)









# The Unix Shell

The shell is a command-line interface (CLI) with the UNIX system — the middleman between you and the kernel. It accepts a command, interprets the command, executes the command, and then waits for another command. The shell displays a prompt to notify you that it is ready to accept your command. This prompt in the shell window  looks something like: 


![zsh Terminal Window](images/shell.png)


There are several shell renditions starting with the (Ken) Thompson shell, the first shell from Bell Laboratories (1971).  Others include Bourne shell (__sh__), C shell (__csh__), and Korn shell (__ksh__).  Two very popular shells are the Bourne _Again_ Shell (__bash__) and the Z shell (__zsh__).  

Although most shell commands are the same, there are some differences.  The commands presented below assume the Z-shell.  


```
echo $SHELL
echo "${ZSH_VERSION}"
```



## Basic Commands

Three parts to a command:
1. The command
2. Options that typically start with a - or --
3. Argument




## Getting Help
```
man [command]
```





# Directory Commands

### Print Working Directory
```
$ pwd
```

### List contents of directory.  

The syntax for the ls command is given below. 

```
$ ls [options] [names]
```

| Option | Description |
|:------ | :----------- |
| -a	|   Displays all files|
| -b	|   Displays nonprinting characters in octal|
| -c    |   Displays files by file timestamp|
| -C	|   Displays files in a column format (default)|
| -d	|   Displays only directories | 
| -f    | Interprets each name as a directory, not a file|
| -F	| Flags filenames |
| -g	| Displays the long format listing, but excludes the owner name|
| -i	| Displays the inode for each file|
| -l	| Displays the long format listing|
| -L	| Displays the file or directory referenced by a symbolic link|
| -m	| Displays the names as a comma-separated list|
| -n	| Displays the long format listing, with GID and UID numbers|
| -o	| Displays the long format listing, but excludes group name |
| -p	| Displays directories with / |
| -q	| Displays all nonprinting characters as ?|
| -r    | Displays files in reverse order |
| -R    | Displays subdirectories as well |
| -t	| Displays newest files first. (based on timestamp) |
| -u    | Displays files by the file access time|
| -x    | Displays files as rows across the screen|
| -1    | Displays each entry on a line |


__Example__: Dot files are typically configuration files and by default are hidden.  To view _all_ files in a directory, 

```
$ ls -a
```  


 


## Change Directory
```
$ cd path
```



## Make Directory
```
$ mkdir name_new_folder
```


### Rename directory
```
$ mv olddirectory newdirectoryname
```

### Remove directory

```
rmdir directoryname
rm -r directoryName
```




# File Commands: move, copy, rename, and remove



## Remove file
 `-f` option can be dangerous.

```
$ rm filename
$ rm -i filename
$ rm -f filename 
```



## Copy files

```
$ cp source_file target_file 
$ cp source_file target_directory
```

## Move (or rename) files
Instead of clicking and dragging, move it.

```
$ mv source_file target_directory
$ mv -i existing newfile
$ mv chap*.pdf Directory/
```




--


## Permissions

User - Group - World!

Each number is binary.  $111_2 = 7$  1 = on, 0 = off.

```
chmod 740 filename
```

```
# Set execute permission
chmod 0755 script.sh

# Allow only the owner to execute
chmod 0700 script.sh
```






## Package managers

Package managers handle processes for a computer's operating system including installing, upgrading, configuring, and removing computer programs.  Depending on your distribution (e.g., Arch Linux (pacman), macOS (brew), Debian (apt), common package managagers include:

```
apt
yum
zypper
pacman
brew
```




## cat
The cat command shows the contents of file on the screen.


## head
Shows the first lines of a file. 

## touch
`touch` -- change file access and modification times.   If any file does not exist, it is created with default permissions.


## General Syntax
```
$ command name [-option . . . ] [argument . . . ]
```


## alias

An alias assigns a syntax to a command.  For example, we can create an alias to a long list as:

```
$ alias ll="ls -l"
$ unalias ll
```
????  to list all aliases.  

> Note: the above alias is for ZSH.  

## grep

`grep` is a utility (short for "global regular expression print") that allows searching through any number of files for all lines that match a specified string of characters or a pattern; it outputs any line that matches the string or pattern.  Typical use is when you cannot remember which file contains a certain piece of information.  

__Example__
The following command will search all files in 'pathname' for the specified string.  

```
grep 'string' pathname
```







## Environment Variables

Each shell has several important environment variables necessary for everyday use. Environment variables define certain things that enhance and customize each shell to your taste. Some of the more important variables follow.

`PATH` This variable contains a colon-separated list of directories to use in searching for a command.

`HOME` This variable contains your home directory.




View all files in your home directory.
```
ls -a $HOME
```





## Symbolic Link
A symbolic link to a file in another directory (appeared in Version 1 AT&T UNIX).  That is, frequently, you need to refer to a file in another directory. Do NOT copy this file to the directory; instead, link to the file to have ONE copy (saves disk space and version control).

```
ln -s real_pathname .
```

> Note that the “.” means to use the same filename in the local directory. You can use a different name by typing.

```
ln -s real_pathname local_filename
ln -s source_file myfile
```


**Example** 
To create a symbolic link to a binary program, e.g., Julia.

```
ln -s path/to/juila julia
```






# GNU (Not Unix) 1971 Richard Stallman MIT

### Free Software

1. Freedom to run the program for any purpose
2. Freedom to study how the program works and adapt it by accessing the source code.
3. Freedom to redistribute copies.
4. Freedom to improve the program and release the improvements to the public.  


# Linux
In 1991, Linus Torvalds, a second-year Computer Science student at the University of Helsinki, wrote a kernel.


Other useful commands
```
tree
clear
date
ping google.com
```



## Special Characters

* `~` is the home directory
* `.` is the current directory
* `..` is the parent directory
* `/` is a path directory separator
* `#` is a comment
* `?` single character wildcard
* `*` wildcard
* `;` shell command separator
* `<` input redirect
* `>` output redirect
* `|` pipe
* `$` variable expression

## Assignment Exercises

This assignment covers the basics of using Unix shell commands to navigate directories, create, edit, copy, and delete files and directories. It also introduces the use of some commonly used commands such as `ls`, `cd`, `pwd`, `mkdir`, `touch`, `echo`, `cat`, `cp`, `rm`, and `rmdir`. Have fun exploring the power of the Unix shell!

1. Open a terminal window and navigate to your home directory.

2. Use the `ls` command to list the files and directories in your home directory.

3. Use the `cd` command to navigate to a subdirectory of your choice.

4. Use the `ls` command again to list the files and directories in the subdirectory.

5. Use the `pwd` command to print the current working directory to the terminal.

6. Use the `mkdir` command to create a new directory named "mydir" in the current working directory.

7. Use the `cd` command to navigate into the "mydir" directory.

8. Use the `touch` command to create a new file named "myfile.txt" in the "mydir" directory.

9. Use the `echo` command to add some text to the "myfile.txt" file.

10. Use the `cat` command to print the contents of the "myfile.txt" file to the terminal.

11. Use the `cp` command to make a copy of the "myfile.txt" file in the same directory and name it "myfile_copy.txt".

12. Use the `rm` command to delete the original "myfile.txt" file.

13. Use the `ls` command to verify that only "myfile_copy.txt" is now present in the directory.

14. Use the `cd` command to navigate back to your home directory.

15. Use the `rmdir` command to delete the "mydir" directory and its contents.

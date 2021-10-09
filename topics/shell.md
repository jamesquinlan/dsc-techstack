# Introduction to UNIX

UNIX is a multiuser, multitasking operating system developed in the 1970s by Bell Labs.  Licensed in 1975, UC Berkeley made enhancements and called it BSD (Berkeley Software Distribution) and distributed it to universities.   


## UNIX philosophies

* Do one thing and do it well - Write programs that do one thing and do it well. Write programs to work together. Write programs to handle text streams, because that is a universal interface.

* Everything is file - Ease of use and security is offered by treating hardware as a file.

* Store data and configuration in flat text files - Text file is a universal interface. Easy to create, backup and move to another system.

* Use shell scripts to increase leverage and portability - Use shell script to automate common tasks across various UNIX / Linux installations.

* Chain programs together to complete complex task - Use shell pipes and filters to chain small utilities that perform one task at time.

* Choose portability over efficiency.

* Keep it Simple.





# The UNIX Filesystem

The __file__ is the unit of storage in UNIX.  A __directory__ (_folder_ in modern parlance) is a (special) file that contains information about other files.


![UNIX Directory Structure](images/filesystem.png)









# The Unix Shell

The shell is a command line interface (CLI)  with the UNIX system — the middleman between you and the kernel. It accepts a command, interprets the command, executes the command, and then waits for another command. The shell displays a prompt to notify you that it is ready to accept your command. This prompt in the shell window  looks something like: 


![zsh Terminal Window](images/shell.png)


There are several shell renditions starting with the (Ken) Thompson shell, the first shell Bell Laboratories (1971).  Others include Bourne shell (__sh__), C shell (__csh__), and Korn shell (__ksh__).  Two very popular shells are the Bourne _Again_ Shell (__bash__) and the Z shell (__zsh__).  

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
| -g	| Displays the long format listing, but exclude the owner name|
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




---


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

> Note: above alias is for ZSH.  

## grep

`grep` is a utility (short for "global regular expression print") that allows searching through any number of files for all lines that match a specifed string of characters or a pattern; it outputs any line that matches the string or pattern.  Typical use is when you cannot remember which file contains a certain piece of information.  

__Example__
The following command will searches all files in 'pathname' for the specified string.  

```
grep 'string' pathname
```







## Environment Variables

Each shell has several important environment variables necessary for everyday use. Environment variables define certain things that enhance and customize each shell to your own taste. Some of the more important variables follow.

`PATH` This variable contains a colon separated list of directories to use in searching for a command.

`HOME` This variable contains your home directory.




View all files in your home directory.
```
ls -a $HOME
```





## Symbolic Link
A symbolic link to a file in another directory (appeared in Version 1 AT&T UNIX).  That is, frequently you need to refer to a file in another directory. Do NOT copy this file to the directory, instead link to the file so as to have ONE copy (saves disk space and version control).

```
ln -s real_pathname .
```

> Note that the “.” means to use the same filename in the local directory. You can use a different name by typing

```
ln -s real_pathname local_filename
ln -s source_file myfile
```







# GNU (Not Unix) 1971 Richard Stallman MIT

### Free Software

1. Freedom to run the program for any purpose
2. Freedom to study how the program works and adapt it by accessing the source code.
3. Freedom to redistribute copies.
4. Freedom to improve the program, release the improviements to the public.  


# Linux
In 1991, a second year Copmuter Science student at University of Helsinki, Linus Torvalds, wrote a kernel.





Other useful commands
```
tree
clear
date
ping google.com
```



## Exercises

1. Open terminal window and navigate to your home directory.

2. List the files and folders in your home directory.

3. Create a new directory called `dsc227`.   
    a. Create a new text file, `test.txt`.  
    b. Rename this file, `tests.txt` and copy it to the `dsc227` folder.
    c. Remove the original file.  

4. List all the files (including hidden) in your home directory.

5. Create an alias (`ll`) for the "list all" command.

6. Change permissions of `tests.txt` to 777.  

7. Create a symbolic link to this file in the `dsc227` directory. 
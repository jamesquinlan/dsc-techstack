# Linux Shell Scripting
<!-- https://bash.cyberciti.biz/guide/Main_Page -->

Recall the __shell__ is a user interface and starts when logging in or openning a console (terminal).  

To view your current shell:

```
echo $SHELL
```




## Why shell scripting

Three words: __repetitive task automation__.

##### Practical examples

- Find out information about local or remote servers.
- Creating a project folder and populating the files
- Find out all failed login attempt, if login attempt are continue repeatedly from same network IP automatically block all those IPs accessing your network/service via firewall.












Text file is a universal interface.

Use shell scripts to increase leverage and portability - Use shell script to automate common tasks across various UNIX / Linux installations.



Shell scripts can contain:

- Shell keywords such as if..else, do..while.

- Shell commands such as pwd, test, echo, continue, type.

- Linux binary commands such as w, who, free etc..

- Text processing utilities such as grep, awk, cut.

- Functions - add frequent actions together via functions. For example, /etc/init.d/functions file contains functions to be used by most or all system shell scripts in the /etc/init.d directory.

- Control flow statments such as if..then..else or shell loops to perform repeated actions.

Each script has purpose

- Specific purpose - For example, backup file system and database to NAS server.

- Act like a command - Each shell script is executed like any other command under Linux.

- Script code usability - Shell scripts can be extended from existing scripts. Also, you can use functions files to package frequently used tasks.



```
#!/bin/bash
echo "Hello ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"

# w = display who is logged in and what they are doing
w  
```






__Example__: Wordpress Naked Theme 

```
404.php
archive.php
comments.php
footer.php
functions.php
header.php
home.php
index.php
search.php
sidebar.php
single.php
style.css
assets
	css
	images
	js
	
```

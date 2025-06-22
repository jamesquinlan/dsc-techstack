# Linux Shell Scripting
<!-- https://bash.cyberciti.biz/guide/Main_Page -->

Recall the __shell__ is a user interface and starts when logging in or opening a console (terminal).  

To view your current shell:

```zsh
echo $SHELL
```

Here are other simple command lines that prompt the users for Fullname, then write to the terminal, "Hello ..." where ... is whatever the user enters.

```zsh
echo -n "Enter Fullname: " 
read fullname
echo "Hello $fullname"
```
Note: The last line above can also be, `echo "Hello " $fullname`.  That is, `$fullname` outside the double quotes. 






## Why shell scripting?

Three words: __repetitive task automation__.

##### Practical examples

- Find out information about local or remote servers.
- Creating a project folder and populating the files
- Find out all failed login attempts, if login attempts continue repeatedly from the same network IP, automatically block all those IPs accessing your network/service via the firewall.












A text file is a universal interface.

Use shell scripts to increase leverage and portability - Use shell scripts to automate common tasks across various UNIX / Linux installations.



Shell scripts can contain:

- Shell keywords such as if..else, do..while.

- Shell commands such as pwd, test, echo, continue, and type.

- Linux binary commands such as w, who, free, etc.

- Text processing utilities such as `grep` and `awk`.

- Functions - add frequent actions together via functions. For example, `/etc/init.d/` functions file contains functions to be used by most or all system shell scripts in the `/etc/init.d` directory.

- Control flow statements such as if..then..else or shell loops to perform repeated actions.





Each script has a purpose.

- Specific purpose - For example, backup the file system and database to the NAS server.

- Act like a command - Each shell script is executed like any other command under Linux.

- Script code usability - Shell scripts can be extended from existing scripts. Also, you can use function files to package frequently used tasks.



```zsh
#!/bin/bash
echo "Hello ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"

# w = display who is logged in and what they are doing
w  
```

> Set permissions `chmod +x filename.zsh` and run `./filename.zsh`



## If-THEN-ELSE
```zsh
#!/bin/zsh

echo -n "Enter a number: "
read x
if [[ $x -gt 100 ]]
then
	echo "$x is greater than 100"
else
	pwd
fi

date
```



## Loops

```zsh
#!/bin/zsh
for i in 1 2 3 4
do
	echo "value of i is $i"
done
```

 

```zsh
#!/bin/zsh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
	echo "Enter file name (or 'bye' to quit)"
	read INPUT_STRING
	echo "You typed: $INPUT_STRING"
	touch $INPUT_STRING.txt
done
```



## Update and Upgrade Automation

```zsh
#!/bin/zsh

set -e
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
```



__Exercise__: (WordPress Naked Theme) Write a script that will create the file structure below. 

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



## Assignment Exercises

This assignment covers the basics of creating and modifying shell scripts in zsh, including accepting command-line arguments and using conditional statements to perform checks. Have fun experimenting with Zsh shell scripting!


1. Open a terminal window and navigate to a directory where you want to create your shell script.

2. Create a new file with a .sh extension by typing `touch myscript.sh`.

3. Open the file in a text editor by typing nano myscript.sh.

4. Write a script that prints "Hello, world!" to the terminal when executed.

5. Save the script by pressing `Ctrl + X`, then `Y`, and then Enter.

6. Make the script executable by typing `chmod +x myscript.sh`.

7. Execute the script by typing `./myscript.sh` and verify that "Hello, world!" is printed to the terminal.

8. Modify the script to accept a command-line argument and print it to the terminal. For example, if the user enters `./myscript.sh John`, the script should print "Hello, John!" to the terminal.

9. Save and execute the modified script to ensure it is working as expected.

10. Add a conditional statement to the script that checks if a file named "output.txt" exists in the same directory as the script. If it does, the script should print "The file exists" to the terminal. If it does not, the script should print "The file does not exist".

11. Save and execute the modified script to ensure it is working as expected.

12. Write a shell script that takes an integer input from the user and prints all the even numbers between 1 and the input number.

13. Write a shell script that prompts the user to enter a sentence. The script should count and display the number of vowels (a, e, i, o, u) present in the sentence.

14. Write a shell script that prompts the user to enter a number. The script should calculate and print the factorial of that number using a loop.

15. Write a shell script that reads a file called "numbers.txt" containing a list of integers (one per line). The script should calculate and display the sum of all the even numbers in the file.

VIM (Vi IMproved) is an open source lightweight, powerful, and popular  text editor available for Debian based Linux, RPM based Linux, and Windows.  (Note: MacOS is BSD distro - Debian based).  Other editors include ```vi, nano, pico, emacs, nvi, elvis```, ... .  

See: https://www.vim.org


## Installation on Debian based Linux

First check to see if vim is already installed.  
``` 
$ which vim
```
If already installed, you will see the the path displayed, for example:
```
/usr/bin/vim
```
If ```vim not found```, install it by typing the following commands at the command prompt: 

```
$ sudo apt-get update 
$ sudo apt-get install vim
```

To ensure Vim is correctly installed execute below command −

```
$ which vim
```

Or yum install vim

# Vim modes

Vim supports multiple modes.

### Command mode
The default mode.  Commands include: commands in this mode like copy, paste, delete, replace, etc.  Vim command without a colon are excuted in command mode.


### Insert mode
Used to enter and edit text.  The current mode is show at the bottom left corner of the window.   To switch from default command to insert mode press ```i``` key. 
 

To exit insert mode use the escape key, ```esc```.  


### Command line mode




To write to buffer:
```
:w
```


To quit vim, 
```
:q
```



To quit without saving changes, type:

```
:q!
```


Save changes and quit editor with the  command: 
```
:wq
```

## Help

```
:help
:help [topic]
:help modes
```





# Essential Vi Commands
Open a file:
```
vi filename
```


To go into edit mode: press ESC and type I


To go into command mode: press ESC

To save a file press ESC and type 
```
:w fileName
```

To save a file and quit: press ESC and type
```
:wq
```

OR

press ESC and type `:x`


To jump to a line:
press ESC and type `:the_line_number`




To Search for a string:
Press ESC and type `/wordToSearch`



To quit vi:
Press ESC and type :q
Save the following into a file called hello.sh:

```
#!/bin/bash
echo "Hello, World!" 
echo "Knowledge is power."
```

Save and close the file. You can run the script as follows:
```
 ./hello.sh
 ```



Saving and Running Your Script
The command ./hello.sh displayed an error message on the screen. It will not run script since you've not set execute permission for your script hello.sh. To execute this program, type the following command:

```
chmod +x hello.sh
./hello.sh
```
# VIM

VIM (Vi IMproved) is an open source lightweight, powerful, and popular (modal) text editor available for Debian based Linux, RPM based Linux, and Windows.  (Note: MacOS is BSD distro - Debian based).  Other editors include ```vi, nano, pico, emacs, nvi, elvis```, ... .  


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
If ```vim``` not found, install it by typing the following commands at the command prompt: 

```
$ sudo apt-get update 
$ sudo apt-get install vim
```

To ensure Vim is correctly installed execute below command −

```
$ which vim
```

Or `yum install vim` with yum.







# Vim modes

Vim is a modal editor.  Keystrokes have different results based on the mode.  The modes are:

1. __Normal__: navigate file and make edits
2. __Inssert__: for inserting text
3. __Replace__: for replacing text
4. __Visual__ (plain, line, or block): select text
5. __Command__: run commands

The mode is displayed in the bottom left corner (unless in normal mode).


## Normal Mode

You should be in normal mode most of the time. To enter normal mode, press the ```ESC``` key (from any mode).

#### Movements in normal mode

- ```hjkl``` (left, down, up, right)
- words: ```w``` (next word), ```b``` (beginning of word), ```e``` (end of word)
- Lines: ```0``` (beginning of line), ```^``` (first non-blank character), ```$``` (end of line)
- Screen: ```H``` (top of screen), ```M``` (middle of screen), ```L``` (bottom of screen)
- Scroll: ```^u``` (up), ```^d``` (down)
- File: ```gg``` (beginning of file), ```G``` (end of file)
- Line numbers: ```:{number}<CR>``` or ```{number}G``` (line {number})
- Misc: ```%``` (corresponding item)
- Find: ```f{character}```, ```t{character}```, ```F{character}```, ```T{character}```
	- find/to forward/backward {character} on the current line
	- `,` / `;` for navigating matches
- Search: ```/{regex}```, ```n``` / ```N``` for navigating matches




### Command mode
The default mode.  Commands include: commands in this mode like copy, paste, delete, replace, etc.  Vim command without a colon are excuted in command mode.


### Insert mode
Used to enter and edit text.  The current mode is show at the bottom left corner of the window.   To switch from default command to insert mode press ```i``` key. 
 

To exit insert mode use the escape key, ```esc```.  


### Command mode

Enter command mode with ```:``` from Normal mode.  Functionalities in this mode include opening, saving, and closing files.  Common commands in this mode include:
- ```:q``` quit and close window
- ```:w``` save (write) buffer
- ```:wq``` save and quit
- ```:e {filename}``` open file to edit
- ```:ls``` list/show open buffers
- ```:help {topic}```
	- ```:help :w``` opens help on the command ```:w```
	- ```:help w``` opens help on ```w``` movement



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
Help is a command, but deserves its own subsection heading. 

```
:help
:help [topic]
:help modes
```

| Command   | Meaning                     |
|-----------|-----------------------------|
| ```i```   | insert                      |
| ```o```   | newline below (insert mode) |
| ```O```   | newline above               |
| ```d```   | delete                      |
| ```dw```  | delete word                 |
| ```u```   | undo                        |
| ```y```   | yank, copy                  |
| ```p```   | paste                       |
| ```yy```  | copy line                   |
| ```yw```  | copy word                   |
| ```fo```  | find "o"                    |
| ```.```   | repeats last command        |
| ```4j```  | down 4 lines                |
| ```c2w``` | change 2 words              |
| ```2dw``` | delete 2 words              |




## Selection Mode


# Essential Vi Commands
Open a file:
```
vi filename
```


To go into edit mode: press ESC and type I


To go into command mode: press ```ESC```

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








## Help

```
:help
:help [topic]
:help modes
```



## Copy, Cut, and Paste

https://linuxize.com/post/how-to-copy-cut-paste-in-vim/




# Encryption
```
vi /pathtofile/MyFile.txt
```

Press the ‘Enter’ key. The contents of your file should appear in the terminal window.



Before you enter any Vim command, you should make sure that you’re not in insert mode, so press the `Escape` key – if you were in insert mode, then you’re now in command mode.

Now, enter:

```
:X
```

Note that Vim is *case-sensitive*, so the `X` must be capitalized.

Vim will then ask you to create an encryption key, which is essentially the password you'll use to encrypt and decrypt this text file. If you forget this key, then you'll be unable to access your file's contents, so make sure you use something memorable!

Type your encryption key/password, then press the `Enter` key on your keyboard – rinse and repeat to confirm that this is the encryption key you want to use.

This password isn't applied to your file until you save it, so now's a good time to save your changes by running the following command:
```
:wq
```

That's it – the file is encrypted!

If a potential snooper tries to open this file using a regular text-editing app, they'll get an error message. If they try to access this file in Vim using the wrong encryption key, they'll see nothing but scrambled letters, symbols, and numbers.

Accessing an encrypted file

If at some point you need to view or edit a Vim-encrypted file, then you have two options:

Open this file in Vim
Vim automatically checks whether a file is encrypted, so if you try to access it through Vim (using the vi filepath/filename command), it'll prompt you to enter your encryption key. Once you've entered your key, the file's contents will appear in the Terminal, ready for you to view and edit.

# Remove encryption
To remove encryption from a file:

Open the file in Vim (again, using the `vi filepath/filename` command).
Enter your encryption key when prompted.
Enter the following command:
```
:X
```

When Vim prompts you to create a new encryption key, press the `Enter` key twice.
Save your changes:
```
:wq
```

You'll now be able to open this file in your regular text-editing application.

# Change the encryption key

To change the encryption key associated with the file:

Open the file in Vim.
Enter your password when prompted.
Run the following command:
```
:X
```

Type new password then hit the `Enter`.
Save the changes with the command  `:wq`.




# Customizing Vim

Vim is customized in the configuration file: ```~/.vimrc```.



# Advanced Vim

- Extend Vim with plugins
- Use multiple windows
```
:sp / :vsp  # to split windows
```




# Practice Text

```
def fizz_buzz(limit):
    for i in range(limit):
        if i % 3 == 0:
            print('fizz')
        if i % 5 == 0:
            print('fizz')
        if i % 3 and i % 5:
            print(i)

def main():
    fizz_buzz(10)
```


```
The Apple Cat // modem is by far the most expandable modem on the market today.	Of course it's also the choice modem of pirates because of it's
inexpensive half-duplex 1200 baud capabilities.  The expansion module available
for the cat has several very useful functions.	Rather than shelling out $30
bucks for one which you may only use a few of the features this file tells you
how to build just certain features or even the whole package.

   First off you'll need some basic knowledge and tools.  As for the knowledge
you'll need to know how to solder pretty well, you'll also proabibly have to
know DC from Hz and +12V from RS232.  Ok now, If you can handle that that,
you'll need these tools:
```






# Exercises

1. Fix the following in [fizz buzz](https://en.wikipedia.org/wiki/Fizz_buzz):

- Main is never called
- Starts at 0 instead of 1
- Prints 'fizz' and 'buzz' on separate lines for multiples of 15
- Prints 'fizz' for multiples of 5
- Hard-codes 10 instead of taking a command-line argument


2. 

# Change File Permissions

`chmod` 

The general syntax is:
```zsh
chmod options permissions file name
```


For example, 

```zsh
chmod u=rwx,g=rx,o=r myfile
```




## Executable Permission

Often we need to set permission to execute.  In particular, if we write a script file (or python script), it needs to bexecuted. The easiest way is to use the `+x`:

```zsh
chmod +x myfile
```






## chmod with digits

Another example of changing permissions uses digits.  For example, 

```zsh
chmod 754 myfile
```

Here the digits 7, 5, and 4 each individually represent the permissions for the user, group, and others, in that order. Each digit is a combination of the numbers 4, 2, 1, and 0:

4 stands for "read",
2 stands for "write",
1 stands for "execute", and
0 stands for "no permission."

So 7 is the combination of permissions 4+2+1 (read, write, and execute), 5 is 4+0+1 (read, no write, and execute), and 4 is 4+0+0 (read, no write, and no execute).

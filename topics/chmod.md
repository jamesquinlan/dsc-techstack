# Change File Permissions


This lesson covers using `chmod` to set file and directory permissions. Remember to use chmod carefully, as modifying permissions can have significant security implications.


`chmod` is a command in Unix-based operating systems that allows users to change the permissions of a file or directory. The name "chmod" stands for "change mode," and it's a powerful tool for securely managing file permissions.

There are three basic types of permissions for a file or directory:

1. Read (`r`) permission: Allows a user to view the contents of a file or directory.

2. Write (`w`) permission: Allows a user to modify the contents of a file or directory.

3. Execute (`x`) permission: Allows a user to run a file or access a directory's contents.


Each permission can be assigned to three groups of users:

1. Owner (`u`): The user who owns the file or directory.

2. Group (`g`): A group of users who have access to the file or directory.

3. Others (`o`): Any user who is not the owner or a member of the group.



The `chmod` command uses a numerical value to represent the permissions for each group of users:

* Read permission is represented by `4`

* Write permission is represented by `2`

* Execute permission is represented by `1`

* No permission is represented by `0`



To set permissions for a file or directory using `chmod`, you need to specify the numerical value for each group of users and the file or directory you want to modify.

Here's an example of how to use `chmod`:

1. Open a terminal window and navigate to the directory that contains the file you want to modify.

2. Use the `ls -l` command to view the current permissions of the file.

3. Determine the permissions you want to set for the file or directory.

4. Use the chmod command to set the permissions. For example, to give the owner read, write, and execute permissions, the group read permission, and others no permission, you would enter: 

```zsh
chmod 750 filename.
```

5. Again, use the `ls -l` command to verify that the permissions have been set correctly.




## Summary Permissions Reference Tables



| Octal | Binary | Permission | Description               |
|-------|--------|------------|---------------------------|
| 0     | 000    | ---        | No permissions            |
| 1     | 001    | --x        | Execute only              |
| 2     | 010    | -w-        | Write only                |
| 3     | 011    | -wx        | Write and execute         |
| 4     | 100    | r--        | Read only                 |
| 5     | 101    | r-x        | Read and execute          |
| 6     | 110    | rw-        | Read and write            |
| 7     | 111    | rwx        | Read, write, and execute  |



| Command      | Permissions          | Meaning                                       |
|--------------|----------------------|-----------------------------------------------|
| chmod 777    | rwxrwxrwx             | Full access for user, group, and others       |
| chmod 755    | rwxr-xr-x             | User full; group and others can read & exec   |
| chmod 700    | rwx------             | Full user access; no access for others        |
| chmod 644    | rw-r--r--             | User can read/write; others read only         |
| chmod 600    | rw-------             | User read/write; no one else has access       |





| Permission | User (u) | Group (g) | Others (o) |
|------------|----------|-----------|-------------|
| Read (r)   |  4   	 |  4    	   |  4          |
| Write (w)  |  2   	 |  2        |  2          |
| Execute (x)|  1   	 |  1        |  1          |




| Permission | User (u) | Group (g) | Others (o) |
|------------|----------|-----------|-------------|
| Read       | r (4)    | r (4)     | r (4)       |
| Write      | w (2)    | w (2)     | w (2)       |
| Execute    | x (1)    | x (1)     | x (1)       |





| Octal | Symbolic | Meaning                          |
|-------|----------|----------------------------------|
| 700   | rwx------| Full access for user only        |
| 755   | rwxr-xr-x| User full, others read & execute |
| 644   | rw-r--r--| User read/write, others read     |
| 600   | rw-------| User read/write only             |
| 777   | rwxrwxrwx| Full access for everyone         |





| Octal | Symbolic | Meaning                          |
|-------|----------|----------------------------------|
| 0     | ---      | No permissions                   |
| 1     | --x      | Execute                          |
| 2     | -w-      | Write                            |
| 3     | -wx      | Write and execute                |
| 4     | r--      | Read                             |
| 5     | r-x      | Read and execute                 |
| 6     | rw-      | Read and write                   |
| 7     | rwx      | Read, write, execute             |



| Symbol | Effect                 |
|--------|------------------------|
| +      | Adds permission        |
| -      | Removes permission     |
| =      | Sets exact permission  |



| Command            | Meaning                                           |
|--------------------|---------------------------------------------------|
| chmod +x file      | Add execute permission for all (u/g/o)            |
| chmod u+x file     | Add execute for user only                         |
| chmod g-w file     | Remove write from group                           |
| chmod o=r file     | Set read-only for others                          |
| chmod a+x script.sh| Add execute to all for a script                   |
| chmod 755 file     | User: rwx, Group/Others: r-x                      |
| chmod 644 file     | User: rw-, Group/Others: r--                      |
| chmod -R 755 dir/  | Recursively set rwxr-xr-x for all files/dirs     |



> Scripts need `chmod +x script.sh` before running with `./script.sh`



## Assignment Exercises

This assignment covers using chmod to set file and directory permissions. Remember to use chmod carefully, as modifying permissions can have significant security implications. Good luck with your chmod practice!


1. Open a terminal window and navigate to a directory containing one or more files.

2. Use the `ls -l` command to view the current permissions of the files.

3. Determine the permissions you want to set for one of the files.

4. Use the chmod command to set the permissions for that file. For example, to give the owner read and write permissions, the group read permission, and others no permission, you would enter: `chmod 640 filename`.

5. Again, Use the `ls -l` command to verify that the permissions have been set correctly.

6. Create a new file in the same directory and set its permissions to give the owner read, write, and execute permissions, the group read and execute permissions, and others no permission. Use the `chmod` command to set the permissions.

7. Use the `ls -l` command to verify that the new file's permissions have been set correctly.

8. Modify the permissions of a directory in the same directory to give the owner, group, and others read and execute permissions. Use the chmod command to set the permissions.

9. Use the ls -l command to verify that the directory's permissions have been set correctly.




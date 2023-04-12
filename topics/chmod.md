# Change File Permissions


This lesson covers the basics of using `chmod` to set file and directory permissions. Remember to use chmod carefully, as modifying permissions can have significant security implications.


`chmod` is a command in Unix-based operating systems that allows users to change the permissions of a file or directory. The name "chmod" stands for "change mode," and it's a powerful tool for managing file permissions in a secure way.

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

5. Use the `ls -l` command again to verify that the permissions have been set correctly.








## Assignment Exercises

This assignment covers the basics of using chmod to set file and directory permissions. Remember to use chmod carefully, as modifying permissions can have significant security implications. Good luck with your chmod practice!


1. Open a terminal window and navigate to a directory containing one or more files.

2. Use the `ls -l` command to view the current permissions of the files.

3. Determine the permissions you want to set for one of the files.

4. Use the chmod command to set the permissions for that file. For example, to give the owner read and write permissions, the group read permission, and others no permission, you would enter: `chmod 640 filename`.

5. Use the `ls -l` command again to verify that the permissions have been set correctly.

6. Create a new file in the same directory and set its permissions to give the owner read, write, and execute permissions, the group read and execute permissions, and others no permission. Use the `chmod` command to set the permissions.

7. Use the `ls -l` command to verify that the permissions have been set correctly for the new file.

8. Modify the permissions of a directory in the same directory to give the owner, group, and others read and execute permissions. Use the chmod command to set the permissions.

9. Use the ls -l command to verify that the permissions have been set correctly for the directory.



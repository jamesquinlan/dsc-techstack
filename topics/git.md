# Introduction to Git

Git is a *version control system* (VCS).  

Git keeps track of how our project files change over time and tracks file modifications.  It enables reverting to a specific version of the file in history.   Git also allows several individuals to **contribute and collaborate on projects**.  Each developer has their version of the project on their local computer. If the edits are acceptable, the different project versions can later be merged into the project's main version.

Although there are graphical user interfaces (GUI) to interact with Git, they are primarily used via the command-line interface (CLI).

The URL of the Git homepage is: [https://git-scm.com/](https://git-scm.com/)

:heavy_exclamation_mark: Git is **not** Github


### Must Know Technology

Git is one of the most essential skills for any data scientist or software developer nowadays.  It is a _must_ have on your resume!







# 1. Setup instructions

Download Git here: [https://git-scm.com/downloads](https://git-scm.com/downloads)

Click the download link for your specific operating system and then follow through the installation wizard to get things set up on your computer.

After installation, start your terminal and type the following command to verify that Git is ready to be used on your computer:

```zsh
git --version
```

If everything goes well, it should return the Git version installed on your computer.

If you are using a Mac or Linux machine, you can utilize the default zsh terminal that comes pre-installed on your machine.

If you are using Windows, you can use its built-in Powershell terminal or the Git zsh terminal, which is bundled with the Git installation. For detailed Windows Git and Git zsh install instructions, check out this blog post: [https://zarkom.net/blogs/how-to-install-git-and-git-bash-on-windows-9140](https://zarkom.net/blogs/how-to-install-git-and-git-bash-on-windows-9140)


### Configuring Your Name & Email

At the terminal, run the following commands which identify yourself to Git:

```zsh
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

If you already have git installed and configured these in the past, you may show this information by issuing the following command:  

```zsh
git config --list
``` 








# 2. Repositories

A Git **repository** is a container for a version-controlled project (even for a single file).  

There are two types of Git repositories:

- **Local repository** - stored on a personal computer.  

- **Remote repository**—stored outside the local system, usually on a remote server or cloud. A remote repo is necessary while several members are working on a project. It is where the project code resides, changes are pushed, and other members' feature additions are pulled.


> NOTE: We will start by working with local repositories.










# 3. Initializing a repository

To initialize a git repo from the project's *main* directory, execute the ```init``` command:

```zsh
git init
```

This creates a hidden directory **.git** for this project.  All tracking data will be stored here.





## 3.1. Checking the status

To verify the status of our repository, enter the following command in our terminal while within the project folder: 

```zsh
git status
```

The command produces the following results: 

```zsh
On branch main
No commits yet
nothing to commit (create/copy files and use "git add" to track)
```


This command should be the most frequently used. It tells us which files have been modified, which files have been monitored, and so on.   


:heavy_exclamation_mark:  Run `git status` __frequently__!










## Example: 

Create a file to track. Everyone knows how to create a file and has done so many times. Here is a method using the `touch` command (_touch_ edits the timestamp; thus, if no file exists, it creates one the first time).

```zsh
touch index.html
```

Now check the status (do this frequently):

```zsh
git status
```

The result of issuing the `git status` command now is:

```zsh
On branch main
No commits yet
Untracked files:
	(use "git add <file>..." to include in what will be committed)
		index.html 

nothing added to commit but untracked files present (use "git add" to track)
```














# 4. Staging and committing code

Committing is the process in which the changes are *officially* added to the Git repository.

__Checkpoints__, or snapshots of your project's present state, are what **commits** are in Git. In other words, a commit effectively stores the current version of our code. Thus, we can add as many commits to the commit history as we need. In addition, we can jump back and forth between commits to observe the different versions of our project code. Thus, git enables the effective monitoring of changes and the tracking of the project's development. 

Commits are frequently made at logical moments in developing a project, such as when specified contents, features, or revisions have been included (like new functionalities or bug fixes, for example). 

Before we can commit our code, we must first place it in the staging area. Based on the output of the git status command, we may move the untracked project files to the staging area.

Using `git status`, identify any changes to the (tracked) files before re-adding them to the staging area.


## 4.2. Staging files

From the project folder, we can use the **git add** command to add our files to the staging area, which allows them to be tracked.

We can add a specific file to the staging area with the following command:

```zsh
git add file.js
```




After adding a previous untracked file, ```git status``` shows us the `new file` to be committed (as well as the command to unstage the files if necessary).  For example, 

```zsh
git add index.html
git status

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   index.html
```


### Multiple Files

To add multiple files, we can do this:

```zsh
git add file.js file2.js file3.js
```

Instead of having to add the files individually, we can also add all the files inside the project folder to the staging area:

```zsh
git add .
```

By default, this adds **all the files and folders** inside the project folder to the staging area, from where they are ready to be committed and tracked.  











## 4.3. Making commits

A **commit** saves a snapshot of the code at a particular time to the commit history of our repository.  Use commit after adding all files to the staging area we wish to track.

To commit the files from the staging area, use the command:

```zsh
git commit -m "Commit message"
```

Inside the quotes, write a **commit message** which is used to identify this specific commit in history.  The commit message should be a descriptive summary of the changes that you are committing to the repository.

For example, commit the index.html file:

```zsh
git commit -m "create index.html"
```

Git prints the results of executing the commit to the terminal. This completes the process: ```init, add, commit```.  













## 4.4. Commit history

To see all the commits that were made for our project, you can use the following command:

```zsh
git log
```

The logs will show details for each commit, like the author name, the generated hash for the commit, the date and time of the commit, and the commit message provided.  For example, in the commit on the `index.html` file above, we get

```zsh
commit 9a38190bbb0fa3f07c63338ba816b448d708acf7 (HEAD -> main)
Author: yourname <you@email.com>
Date:   Wed Jun 9 13:03:39 2021 -0400
```



### Example (cont.)

Create new files for the project.

```zsh
touch app.js
touch styles.css
```

Use an editor (e.g., vi) to add code.  For example, in `app.js` place

```js
alert('Hello World');
```  

And, in `styles.css`
```css

```

Check the status (results shown below the command `git status`):
```zsh
git status


On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	app.js
	styles.css

no changes added to commit (use "git add" and/or "git commit -a")
```

Note the two new untracked files that have not been staged for commit and the modification of `index.html`.  


We will stage (add) the modified `index.html` file and the `app.js` file. As always, check the status.  The results are shown under the command.  The two files are ready for commit while `styles.css` remains untracked.   

```zsh
git add index.html app.js
git status


On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   app.js
	modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	styles.css
```  


Commit the files.

```zsh
git commit -m "add app logic"

[main 1cf1223] add app logic
 2 files changed, 17 insertions(+)
 create mode 100644 app.js
```



If we check the log, we see two commits in chronological order (last first).

```zsh
git log

commit 1cf122358a07ebeb2fe544705356d5678f759960 (HEAD -> main)
Author: yourname <you@email.com>
Date:   Wed Jun 9 17:21:34 2023 -0400

    add app logic

commit 9a38190bbb0fa3f07c69861ba816b448d708acf7
Author: yourname <you@email.com>
Date:   Wed Jun 9 13:03:39 2023 -0400

    create index file
```








 
## 4.4.1 Revert to the previous state

To go back to a previous state of your project code that you committed, you can use the following command where ```<commit-hash>``` is the hash from the ```git log```:

```zsh
git checkout <commit-hash>
```


To go back to the latest commit (the newest version of our project code), you can type this command:

```zsh
git checkout main
```





### Another commit
To create a new commit, you will need to repeat the process of adding files to the staging area and then committing them. Again, it's handy to use the `git status` command to see which files were modified, staged, or untracked.













## 4.5. Ignoring files

To ignore files you don't want to be tracked or added to the staging area, create a file called `.gitignore` in your main project folder.

Inside that file, you can list all the file and folder names that you do not want to track (each ignored file and folder should be added to a new line inside the **.gitignore** file).

You can read an article about ignoring files [on this link](https://help.github.com/en/articles/ignoring-files).  See also this [blog post](https://www.pluralsight.com/guides/how-to-use-gitignore-file).


```zsh
touch .gitignore.txt
vim .gitignore
# add file names and folder names
# wildcards work too
```

__Negation__ If using a wildcard, `*.log`, but want to keep the `tests.log` file, then use `!` to negate.  For exmaple, 


```zsh
*.log
!tests.log
```



To ignore a file that is already checked in, you must untrack the file before you add a rule to ignore it. From your terminal, untrack the file (including the `.gitignore` file itself).

```zsh
$ git rm --cached FILENAME
```

<!-- 
https://linuxize.com/post/gitignore-ignoring-files-in-git/
-->




# 5. Branches

A **branch** could be interpreted as an individual timeline of our project commits.

With Git, we can create many of these alternative environments (i.e., different **branches**) so that other versions of our project code can exist and be tracked in parallel.

That allows us to add new (experimental, unfinished, and potentially buggy) features in separate branches without touching the '*official'* stable version of our project code (usually kept on the **main** branch).

Initializing a repository and making commits are saved to the **main** branch by default.




## 5.1. Creating a new branch

You can create a new branch using the following command:

```zsh
git branch <new-branch-name>
```

The new branch that gets created will be the reference to the current state of your repository.

It is good to create a **development** branch to improve your code, add new experimental features, and similar. Then, after developing and testing these new features to ensure they do not have any bugs and can be used, you can merge them to the main branch.




## 5.2. Changing branches

To switch to a different branch, you use the **git checkout** command:

```zsh
git checkout <branch-name>
```

With that, you switch to a different isolated timeline of your project by changing branches.

For example, you could be working on different features in your code and have a separate branch for each feature. When you switch to a branch, you can commit code changes which only affect that particular branch. Then, you can switch to another branch to work on a different feature, which will not be affected by the changes and commits made from the previous branch.

To create a new branch and change to it at the same time, you can use the **-b** flag:

```zsh
git checkout -b <new-branch-name>
```

To list the branches for your project, use this command: `git branch`

To go back to the **main** branch, use this command:

```zsh
git checkout main
```



## 5.3. Merging branches

You can merge branches in situations where you want to implement the code changes that you made in an individual branch to a different branch.

For example, after you fully implemented and tested a new feature in your code, you would want to merge those changes to the stable branch of your project (which is usually the default **main** branch).

To merge the changes from a different branch into your current branch, you can use this command:

To merge changes from branch <branch-name> to main, switch to main and type:
	
```zsh
git merge <branch-name>
```

You would replace `<branch-name>` with the branch that you want to integrate into your current branch.




## 5.4. Deleting a branch

To delete a branch, you can run the **git branch** command with the **-d** flag:

```zsh
git branch -d <branch-name>
```

Read more about branching and merging [on this link](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging).










# 6. Workflow

Below is an example showing the entire workflow process.  Notice the frequent use of ```git status``` to keep us informed as to the state of affairs.  

1. Initialize a project

```
cd 
mkdir website
git init
git status
```

2. Create an index.html and style.ccs file.

```
touch index.html
touch style.css
git status
```

3. Add and commit these files to the (local) repo.

```
git add index.html
git status
git commit -m "initial check-in"
git status
```

At this point, we have not told git about the style.css file (listed under "untracked files").  


4. Edit the files using your favorite editor.


5. Look at the repo state.  
```
git status
```

6. Add the new files.

```
touch app.js
git add style.css app.js
git status
```

7. Edit index.html and style.css, then add and commit.  

```
git status
git add .
git commit -m "add basic styles"
git status
git log
```

8. Time travel to checkout previous commit.

```
git log
git checkout <hash-commit>
```
NOTE: The hash is a branch.

9. Make a new branch

```
git checkout newbranch
```

10. Make changes, add, and commit to the new branch.  

11. Merge newbranch into main branch.  First, switch to main branch.

```
git checkout main
git merge newbranch
```












# 7. Further learning

To learn more about Git, make sure to check the following resources:

- Git official documentation: [https://git-scm.com/doc](https://git-scm.com/doc)
- The free **Pro Git** book: [https://git-scm.com/book/en/v2](https://git-scm.com/book/en/v2)
- Learn about GitHub: [https://guides.github.com/](https://guides.github.com/)

GitHub is a website where we can store our repositories online. In other words, GitHub works with Git as a repository hosting service.





# Workflow

Determine if Git is installed:

```zsh
which git
```


Check the version:

```zsh
git --version
```

After Git is installed.
1. In the documents folder, make new directory called ```testgit```

2. Initialize an empty Git repository.

```zsh
git init
```

3. Check the status (do this frequently)

```zsh
git status
```

4. 




# Git commands covered

```zsh
git --version
git init
git list 
git status
git add <file.ext>
git add . 
git commit -m "Message"
git log 
git branch 
git checkout 
```


## Additional Resources

https://www.notion.so/Introduction-to-Git-ac396a0697704709a12b6a0e545db049

https://www.youtube.com/watch?v=USjZcfj8yxE&t=0s


## Assignment Exercises

This assignment covers the basics of using Git for version control, including creating a new repository, adding and committing files, creating and merging branches, cloning repositories, pushing and pulling changes, stashing changes, cherry-picking commits, creating tags, and using the blame command to track changes. Have fun exploring the power of Git!


1. Create a new Git repository on your local machine using the `git init` command.

2. Add a new file to the repository using a text editor of your choice.

3. Use the `git add` command to stage the new file for commit.

4. Use the `git commit` command to commit the new file with a descriptive message.

5. Create a new branch using the `git branch` command.

6. Use the `git checkout` command to switch to the new branch.

7. Modify the file you created earlier and save the changes.

8. Use the `git add` and `git commit` commands to stage and commit the changes to the new branch.

9. Switch to the main branch using the `git checkout` command.

10. Merge the changes from the new branch into the main branch using the git merge command.

11. Use the `git log` command to view the repository's commit history.

12. Use the `git clone` command to clone the repository to a new directory on your local machine.

13. Create a new file in the cloned repository, stage it, and commit the changes using the `git add` and `git commit` commands.

14. Use the `git push` command to push the changes to a remote Git repository (e.g., on GitHub or GitLab).

15. Use the `git pull` command to pull changes from the remote repository to your local repository.

16. Use the `git fetch` command to fetch changes from the remote repository without merging them into your local repository.

17. Use the `git stash` command to save changes that are not ready to be committed temporarily.

18. Use the `git cherry-pick` command to apply a specific commit from one branch to another.

19. Use the `git tag` command to create a new tag for a specific commit.

20. Use the `git blame` command to view the commit history of a specific file line by line.


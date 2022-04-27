
Topics: cloning, pushing, pulling, forking, pull requests
https://www.notion.so/Introduction-to-GitHub-202af6f64bbd4299b15f238dcd09d2a7


# How do I connect a local folder to an existing github repo?
https://superuser.com/questions/1412078/bring-a-local-folder-to-remote-git-repo



# Git Configuration
As you read briefly in Getting Started, you can specify Git configuration settings with the git config command. One of the first things you did was set up your name and email address:

$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com




# 1. What is GitHub?

GitHub is a cloud-based hosting platform for Git repositories.  Git can be used independent of Github (or competetive platforms such as bitbucket).  Hosting repositories allows collaboratation and provides cloud backups of your code.

GitHub is the single largest host for Git repositories, and is the central point of collaboration for millions of developers and projects. A large percentage of all Git repositories are hosted on GitHub, and many open-source projects use it for Git hosting, issue tracking, code review, and other things.



- **Git is the version control system, the tool that tracks changes to our files over time**
- **Github is a hosting service for projects that use Git.**

It is important to first familiarize yourself with Git. 

Check out Colt Steele's **Learn Git In 15 Minutes** tutorial [**here**](https://www.youtube.com/watch?v=USjZcfj8yxE) (also, you can find the Git notes [**here**](https://www.notion.so/Introduction-to-Git-ac396a0697704709a12b6a0e545db049)).



Git keeps track of changes to the source code by storing it in a (local) *repository*. With Github, a local repository can be uploaded to a remote cloud-based hosting repository. In addition, we have access to any public repositories created by other developers.

GitHub also provides the means for users may follow, rate, and collaborate with other developers.  Multiple contributors are allowed in each repository (repo for short). 

Remote 'repos' on GitHub can be public or private. 


Sharing project portfolios with potential employers is another great use for GitHub.


GitHub homepage: [github.com](http://github.com)









# 2. Getting started with GitHub

GitHub enables developers to access a **remote** central repository hosted in the cloud.  GitHub allows developers to access a central repository located remotely. A developer can clone (i.e., download) a local version of the project from the hosted remote repository. Then, new features or bug fixes are added to their local computer.  Changes can be **pushed** to the remote repository when ready, where the changes may (or may not) be incorporated.  





## 2.1. Registering a GitHub account

You need a GitHub account.  

Sign up for a new account from the home page [GitHub.com](http://github.com) by selecting 'Sign up'.   The direct link to join is: [https://github.com/join](https://github.com/join)


- **Step 1: Set up your account**

Choose a GitHub **username**, provide an **email** address (make sure to use a legitimate email since you will be required to verify the account upon finalizing), and select a (strong) **password**.  See [guidelines for strong passwords](https://its.lafayette.edu/policies/strongpasswords/).

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e29bf4eb-66d3-4161-9a87-4efb70b9e452/join_github.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e29bf4eb-66d3-4161-9a87-4efb70b9e452/join_github.png)

Verify your account, then click the **'Create an account'** button at the bottom.



- **Step 2: Choose your subscription**

Choose the **Free** subscription plan to get started using GitHub at no cost.  

After choosing the **Free** plan, click the **'Continue'** button to go to the next step.




- **Step 3: Setup your profile**

Building a profile is an optional step, but can be valuable in the long run.  Your profile can be developed over time.  

Finally, you need to check the inbox of the email that you provided to **verify your email address** with GitHub.



















# 3. Using GitHub

**Common Workflow: Push an Existing Repo to Github**

1. Add/commit your code locally
2. Go to Github and make a new repository
3. Connect your local repo to the github repo (add a remote)
4. Push your code up to github using the new remote

First, create a local repository, which will be **pushed** to GitHub.


- **Step 1: Create a new local Git repository**

Open a terminal and navigate to a directory that will store the project.  Type the following command to create a new project folder and ``cd`` into it:

```zsh
mkdir hello-world
cd hello-world
```

Initialize a new **local** Git repository by running `git init` as such:

```zsh
git init
```

An empty Git repository is now initialized.



- **Step 2: Adding a new file to our Git repository**

Create a new file in your project folder, we will call our sample file `hello.js`

You can use the graphical interface of your operating system to create the file, or use the following terminal commands:

> Windows Powershell: `ni hello.js`
Bash (Mac/Linux) terminal: `touch hello.js`

You can open the `hello.js` file with your text editor, and write the following JavaScript code which prints **Hello World!** to the console:

```jsx
console.log("Hello World!");
```

Save the file changes and then switch back to your terminal window.

- **Step 3: Making our initial commit to the local repository**

As learned [**Learn Git In 15 Minutes**](https://www.youtube.com/watch?v=USjZcfj8yxE) tutorial, run the following commands to track your files and make the initial commit in the local repository: 

```zsh
git add .
git commit -m "Initial commit"
```

When that's done, it means that we successfully prepared our new local repository to be pushed to GitHub!

Make sure to use the `git status` command frequently when working with Git. It's a great way to check the status of your project files and the whole repository.














## 3.1. Creating a new GitHub repository

To create a new GitHub repository, navigate to [github.com](http://github.com) and press the plus symbol in the top-right corner, then select the '**New repository**' option, as shown in the screenshot here:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b0a68839-6604-4b0b-9e39-ed9ad705459e/new_github_repo.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b0a68839-6604-4b0b-9e39-ed9ad705459e/new_github_repo.png)

You can also navigate to the GitHub page for creating new repositories by visiting this link: [https://github.com/new](https://github.com/new)

On that page, we first need to specify a **Repository name** and an optional **Description.**

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3f2a4d9d-d4d2-40c9-9e01-508cac495495/create_new_repo_CENSORED.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3f2a4d9d-d4d2-40c9-9e01-508cac495495/create_new_repo_CENSORED.png)

For the **Repository name**, we can specify the same project name (**hello-world**) as the local repository that we are using in our example. If you want, you can also write a **Description** of your repository, but you can also skip that field as we did in the screenshot above.

You can set your repository to be **Public** or **Private**.

If you choose **Public**, it means anyone can see this new repository. When uploading your code to a public directory, always make sure that it does not contain sensitive data that you don't wish to share with others.

On the other hand, if you choose **Private**, you can manually choose who can access the new repository.

If you wanted, you could initialize the repository with a **README** file, which usually contains information or documentation about the project. We don't need one for this simple project, so we can skip those options and click the green **'Create repository'** button to finalize the creation procedure.












## 3.2. Pushing our code to the GitHub repository

After the last step, you will be forwarded to the starting page of your new GitHub repository that looks like this:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a5d1dab1-ddc3-4a30-9c50-7ef4e4a1dc44/new_repo_page_CENSORED.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a5d1dab1-ddc3-4a30-9c50-7ef4e4a1dc44/new_repo_page_CENSORED.png)

Since we've already created our Git repo locally, we can focus on the **`…or push an existing repository from the page's command line`** section.

If we didn't already have a local repository created, then we would follow the first set of commands to create a local repository from the remote GitHub one that was just created.

The **git remote add origin** command will associate our local repository with the remote GitHub repository that we just created.  We're essentially telling your Git repo that we have a URL we want it to know about, and we give it the name "origin."  You do not have to name the remote "origin," but it is standard if you only have a single remote.

The **git push** command will then push our local Git repository code to the remote GitHub repository (if you chose a public repository, this would publish your code on the internet - via GitHub).

Therefore, switch back to your local terminal and run the specified commands from your project folder:

```zsh
git remote add origin https://github.com/<your-username>/<your-repo-name>.git
git push -u origin master
```

When you run the **git push** command, you will be prompted to enter your GitHub username and password to log in to your GitHub account from the terminal.

After the repository was pushed, you can navigate back to your GitHub account page or the repository link and refresh it: `https://github.com/<your-username>/<your-repo-name>`

Now, you can use that link to share your project repository with other people.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3276bf66-01fa-45f5-8003-f84cf326da02/after_pushing_repo_page_CENSORED.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3276bf66-01fa-45f5-8003-f84cf326da02/after_pushing_repo_page_CENSORED.png)

For example, anyone can click on the **hello.js** file to see the contents of our project files.

Also, other developers can **clone** the remote repository to their local computer (or **download** it) by clicking on the green button highlighted in the screenshot.

You can also see many other data from the repository, including past **commits**, existing **branches**, etc.






### 3.2.1 Pushing a new branch

```
git push --set-upstream origin NEW_BRANCH_NAME
```









## 3.3. Making changes to the GitHub repository

Any changes that we make to our local project files won't automatically affect the remote GitHub repository until we **push** those changes again to update it.

For example, open the **hello.js** file with your favorite code editor and change the code to this:

```jsx
console.log("Greetings, World!");
```

Save the file changes, and commit those changes to your local repository using the following commands:

```zsh
git add .
git commit -m "Change greeting"
```

Then, push your updated local repository to the remote GitHub repository with this command:

```zsh
git push origin master
```

After that, when you navigate back to your remote repository page on [github.com](http://github.com), you should see the updated code and one more **commit** in the list.













## 3.4. Cloning an existing GitHub repository

Another approach would be to first create a GitHub repository online, and then download it to our computer and initiate the project that way.

From [github.com](http://github.com), go to the **New repository** page: [https://github.com/new](https://github.com/new)

Go through the same steps but specify a new repository name:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/093d46d5-c121-4714-b8ad-0689197b8188/alternate-example-new-repo.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/093d46d5-c121-4714-b8ad-0689197b8188/alternate-example-new-repo.png)

To **clone** the repository, visit its page and select the green **'Clone or download'** menu button, then click on the icon shown in the screenshot to copy the repository URL that we will need to use:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/326d15a7-914e-4f50-a50f-5f8eb047c8ea/clone-repo.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/326d15a7-914e-4f50-a50f-5f8eb047c8ea/clone-repo.png)

Then, to clone the remote repository to your computer, execute the **git clone** command with the link that you just copied:

```zsh
git clone <github-repo-link>
```

That will create a new folder with the remote GitHub repository name and download all the project files and repository data into it. You can then change directories (**cd**) into that folder and normally continue working on the project, as we learned in the previous example.

You can also clone public GitHub repositories from other developers using the same steps where you first find a copy the repository URL and then use it in the **git clone** terminal command.


















# 4. Branching and merging

The general rule is that the **master** branch of your GitHub repository should always contain working and stable code. However, you may want to also push some code that you are currently working on, which may be unstable or not fully tested. Usually, that happens when you are adding a new feature to your code, but still want to push that code to GitHub.

We can create a separate copy of our project code with branching without touching the **master** branch that holds our stable code. Instead, we can make a new branch that creates a different version of our code, which we can then implement our feature. Then, when we fully integrate and test our new feature, we can merge it back to our **master** branch.





## 4.1. Pushing a branch to GitHub

So, when we are working on code modifications or a new feature locally, we usually want to create a new branch for that feature. We do not make changes directly on the main **master** branch, which should only contain stable code.

For example, if we wanted to add a new file to our **hello-world** project, you can switch to a new branch by typing this from the project folder:


```zsh
git checkout -b new-feature
```



Then, you can create a new sample file called **example.js**, and add the following code:

```jsx
console.log("New greeting!");
```




After that, run the standard steps to commit the new changes to the **new-feature** branch:

```zsh
git add .
git commit -m "Add new greeting"
```



To push the **new-feature** branch to the **hello-world** remote repository on GitHub, run this command:



```zsh
git push origin new-feature
```

If you refresh the **hello-world** GitHub repository page, you will see that there is a new branch pushed:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4572025-0f39-4f5f-acc7-0846d621611e/new-feature_branch_pushed.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4572025-0f39-4f5f-acc7-0846d621611e/new-feature_branch_pushed.png)









## 4.2. Creating a Pull Request (PR)

We create a pull request to notify the project owner (or the team leader) that we want to implement changes from our custom branch to the main **master** branch.

The pull request will allow developers to review and verify the changes before allowing them to be applied to the **master** branch, which usually only holds the **stable** version of our code.

To create a pull request, we need to press the following button (from the same interface shown in the last screenshot):

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cdc961ab-316b-46b2-bbcc-627bc3648e3d/PR_button.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cdc961ab-316b-46b2-bbcc-627bc3648e3d/PR_button.png)

After that, we will be redirected to a page that allows us to open a pull request. There, we can specify the title of our pull request and leave a comment describing the changes we have made:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/abaf056e-1288-4edd-8fa8-7df30ec6a65d/Open_a_pull_request.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/abaf056e-1288-4edd-8fa8-7df30ec6a65d/Open_a_pull_request.png)

To submit your pull request, click the green **'Create pull request'** button, as shown in the screenshot.

After that is done, other collaborators can review the pull request, analyze the code changes directly, and add their comments about the pull request.

When the changes from the request are reviewed by yourself (or other team members if you are not working alone), and they don't have any conflicts with the **master** base branch, then the pull request can be approved and merged:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/64f6f42b-fbad-4398-b67c-2cfd2d0805a9/approve_merge.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/64f6f42b-fbad-4398-b67c-2cfd2d0805a9/approve_merge.png)

After you merge the pull request, it offers to delete the *new-feature* branch since the code is now added to the **master** branch.

After a successful merge, you should see the **master** branch changes and the commits from the custom (*new-feature*) branch will also be added to the **master** branch.

Keep in mind that the branch can have conflicts with the base branch in some scenarios, so the button may not be green. This happens where there is a change in a file that conflicts with a different file, so Git cannot automatically decide which version to use. In this situation, a developer may need to manually review the code and solve the conflicts to finalize the merge.

Also, suppose you are the only person working on the project (or in a small team where you don't have a specified project leader). In that case, you may not need to go through the process of creating a pull request via GitHub to integrate your changes. However, it still may be a good practice to have a complete history of the project updates listed as pull requests.

Check the following GitHub guides:
[https://guides.github.com/introduction/flow/](https://guides.github.com/introduction/flow/)
[https://guides.github.com/activities/hello-world/](https://guides.github.com/activities/hello-world/)















## 4.3. Pull changes from GitHub

After making changes or merging branches via pull requests on GitHub, the remote repository may look different from the local repository on your computer. To get the latest changes from the remote GitHub repository, we use the **git pull** command.

When we are working on a team project which is hosted in a remote GitHub repository, we want to use the **git pull** command to get the latest version of the code in our **master** branch, which may have been updated by other developers in our team.

If we associated the GitHub remote repository link to the **origin** alias (like we did in the **hello-world** repository example), then we can use the following command to pull any changes from the remote repository to the main **master** branch in our local project:

```zsh
git pull origin master
```

When we are up to date with the remote branch, we can then work to develop the project code further or add new features.


















# 5. Forking projects on GitHub

When using GitHub, you may find yourself wanting to use someone else's repository as a starting point for your project. Also, you may wish to contribute to a third-party project, which is very popular in the open-source community. Contributing to other projects can also be a great way to build your knowledge and experience, as well as your portfolio!

The process where we create our copy of someone else's project is called **forking**.

So, a **fork** is your copy of a repository owned by someone else.

If you are looking to contribute to a project, you can create new *pull requests* from the **forked** project to offer your changes to the owners of the original repository.




## 5.1. Forking a repository

There is a sample repository called *Spoon-Knife* hosted by GitHub, which they created for testing purposes: [https://github.com/octocat/Spoon-Knife](https://github.com/octocat/Spoon-Knife)

We will be using this repository to test the **Fork** feature of GitHub. Go to the repository page by following the link above and click the '**Fork'** button, as shown in the screenshot below:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/72abe8fe-de4b-4a41-b6b3-85b0913dc549/fork.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/72abe8fe-de4b-4a41-b6b3-85b0913dc549/fork.png)

When the process is finished, you will be taken to your copy of the *Spoon-Knife* project repository. This forked repository will be tied to your GitHub account and won't affect the original repository. To get a local version of the forked repository, you can follow the same *cloning* ****procedure that we already covered.





## 5.2. Working with a forked repository on your local machine

To **clone** the forked repository, visit its page from your GitHub profile and select the green **'Clone or download'** menu button, then click on the icon shown in the screenshot to copy the repository URL that we will need to use:

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dd5e2828-7b42-44a3-9631-3b4c829d712f/fork_clone.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dd5e2828-7b42-44a3-9631-3b4c829d712f/fork_clone.png)

Then, to download the remote repository to your computer, execute the **git clone** command with the link that you just copied:

```zsh
git clone https://github.com/<your-username>/Spoon-Knife.git
```

That will create a new folder called *Spoon-Knife* and download all the project files and repository data. You can then change directories (**cd**) into that folder and start working on the project.

After making changes or implement new things to the forked project, you can generally add and commit those changes as you would do for any other repository.

Also, you can push the changes that you made to the forked (remote) repository tied to your GitHub account.





## 5.3. Proposing changes to the original project

After you made changes to the project that could potentially benefit the original project you forked and want to help improve the open-source community, you can consider offering to contribute your changes.

This can be done using a similar procedure that we went through in the last section, by creating **pull requests** to the original project repository.

After pushing the changes that you made to your fork, you can create a **New pull request**: 

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4fd38dda-2736-41cb-a4e3-9dbe1de60398/new_pull_request.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4fd38dda-2736-41cb-a4e3-9dbe1de60398/new_pull_request.png)

That will lead you to the new pull request page, where you can also add information about your changes.

In situations where you are trying to contribute to a third-party project of a developer that you don't know, it's essential to provide an excellent detailed description of everything you've done. Based on that and the code changes, the original project owner can decide if they want to implement your changes to their project.

After adding information about your changes, you can finally send a new pull request to the original project owner.









# 6. Renaming branches

To rename your branch from `master` to `main`:

1. Log into github.com
2. Select view all branches
3. Click pencil icon to rename
4. To update the local clone branch, run the following:


The following is provided by GitHub after renaming branch on GitHub.com.
```zsh
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```

You can also delete master branch on remote from the terminal:
```zsh
# delete the master branch on the remote
git push origin --delete master
```



## Changing repository name on GitHub

If you change the name of your repo on GitHub, you will get the following message locally when pushing files to the remote

```zsh
remote: This repository moved. Please use the new location:
remote:   https://github.com/username/new-repo.git
To https://github.com/username/old-repo.git
```

To fix this, enter the commands, 

```zsh
git remote set-url origin [updated link url https://........git]


# Alternatively, if you like the long way it is:
git remote rm origin
git remote add origin [updated link]

```

### Removing files from Github

http://www.kaidez.com/remove-files-from-github/





# 7. Concluding remarks

GitHub offers the possibility to have a centralized remote repository when using Git with our project. We can publish our projects and efficiently work with other developers and teams using GitHub. We can also browse all the available open-source projects on GitHub, use them to create our projects or contribute to someone else's project.

To learn more about GitHub and its powerful features, check their Help page and Guides:

- [https://help.github.com](https://help.github.com/)
- [https://guides.github.com/](https://guides.github.com/)

GitHub also has [a desktop application](https://desktop.github.com/), which offers a graphical user interface when working with their service. However, it's a much less popular method of using GitHub (compared to the command-line interface using a terminal).

Also, check **GitHub Gist**, which is an easy way to share your code, notes, or other snippets: [https://gist.github.com/](https://gist.github.com/)

**GitHub Pages** is a popular service for hosting web pages via GitHub. You can learn more about it here: [https://guides.github.com/features/pages/](https://guides.github.com/features/pages/)

They also have official video guides, which you can find [on this link](https://www.youtube.com/githubguides).




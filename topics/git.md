# Introduction to Git

Git is a *version control system* (VCS).

Git keeps track of how project files change over time. It allows reverting to specific versions and enables multiple contributors to collaborate on the same project through local and remote repositories. Developers work locally and sync changes to a shared remote repository.

Though graphical user interfaces (GUIs) exist, Git is most powerful and commonly used via the command-line interface (CLI).

Git homepage: [https://git-scm.com/](https://git-scm.com/)

**Note**: Git is *not* the same as GitHub, which is a hosting platform for Git repositories.

## Installation and Configuration

Download Git from [https://git-scm.com/downloads](https://git-scm.com/downloads)

After installing, verify the installation:

```bash
git --version
```

### Configuring Git

Set your identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

Check your config settings:

```bash
git config --list
```

## Repositories

A **repository** is a version-controlled project.

* **Local repository** – on your machine
* **Remote repository** – hosted on GitHub, GitLab, etc.

We begin by working with local repositories.

## Creating and Inspecting a Repository

Create a new Git repository:

```bash
git init
```

This creates a hidden `.git` directory for tracking changes.

Check repository status:

```bash
git status
```

This shows staged/unstaged/modified/untracked files.

Create a file:

```bash
touch index.html
```

Check status again:

```bash
git status
```

## Staging and Committing Changes

### Staging Files

Add a file to the staging area:

```bash
git add index.html
```

Add multiple files:

```bash
git add file1.js file2.js
```

Add all files:

```bash
git add .
```

### Committing Changes

Commit with a message:

```bash
git commit -m "Initial commit"
```

### Viewing Commit History

```bash
git log
```

Each commit includes an ID, author, date, and message.

### Reverting to a Previous Commit

Checkout a previous commit:

```bash
git checkout <commit-hash>
```

Return to latest commit on main:

```bash
git checkout main
```

### Ignoring Files

Create a `.gitignore` file:

```bash
touch .gitignore
```

Examples:

```
*.log
!important.log
node_modules/
```

To remove a file already tracked:

```bash
git rm --cached FILENAME
```

## Signing Commits

To prove the authenticity of your commits, you can sign them using GPG or SSH keys.

### Generate a GPG key

If you don’t have one already:

```bash
gpg --full-generate-key
```

List your keys:

```bash
gpg --list-secret-keys --keyid-format=long
```

Copy the GPG key ID (a long hex string).

Export your key to add it to GitHub:

```bash
gpg --armor --export YOUR_KEY_ID
```

Add the key to Git config:

```bash
git config --global user.signingkey YOUR_KEY_ID
```

Enable commit signing:

```bash
git config --global commit.gpgsign true
```

Then every commit will be signed:

```bash
git commit -a -S -m"signed commit message"
```

If you're using SSH signing (newer Git versions support this):

```bash
git config --global gpg.format ssh
```

To disable signing temporarily:

```bash
git commit --no-gpg-sign -m "temporary unsigned commit"
```

## Branching and Merging

### Creating a Branch

```bash
git branch new-feature
```

Or create and switch:

```bash
git checkout -b new-feature
```

### Switching Branches

```bash
git checkout main
```

### Listing Branches

```bash
git branch
```

### Merging Branches

Switch to the branch you want to merge *into* (usually main), then run:

```bash
git merge new-feature
```

### Deleting a Branch

```bash
git branch -d new-feature
```

## Remote Repositories

### Clone a repository

```bash
git clone https://github.com/user/repo.git
```

### Add a remote

```bash
git remote add origin https://github.com/user/repo.git
```

### Push changes

```bash
git push origin main
```

### Pull changes

```bash
git pull origin main
```

### Fetch without merge

```bash
git fetch
```

## Advanced Commands

### Stash changes

```bash
git stash
```

Reapply stashed changes:

```bash
git stash apply
```

### Cherry-pick a commit

```bash
git cherry-pick <commit-hash>
```

### Tag a commit

```bash
git tag v1.0
```

### Blame: see who edited each line

```bash
git blame filename
```

## Example Workflow

```bash
mkdir myproject
cd myproject
git init
touch index.html style.css
```

```bash
git add index.html
git commit -m "Add homepage"
touch app.js
git add .
git commit -m "Add styles and JS"
git log
```

Create a feature branch:

```bash
git checkout -b newfeature
echo "console.log('Hi');" > app.js
git add app.js
git commit -m "Add console log"
git checkout main
git merge newfeature
```

## Resources

* Git docs: [https://git-scm.com/doc](https://git-scm.com/doc)
* Pro Git book: [https://git-scm.com/book/en/v2](https://git-scm.com/book/en/v2)
* GitHub Guides: [https://guides.github.com](https://guides.github.com)

## Common Git Commands Summary

```bash
git --version
git init
git status
git add <file>
git add .
git commit -m "message"
git log
git branch
git checkout <branch>
git checkout -b <new-branch>
git merge <branch>
git clone <repo-url>
git push origin <branch>
git pull origin <branch>
git stash
git cherry-pick <commit>
git tag <tag-name>
git blame <file>
git commit -S -m "signed commit"
```

## Practice Exercises

1. Create a repository using `git init`
2. Create a file and write code
3. Add and commit changes
4. Create and switch to a new branch
5. Make changes and commit
6. Merge into main
7. Clone a remote repository
8. Push changes to GitHub
9. Pull changes from remote
10. Use stash, cherry-pick, tag, and blame
11. Sign a commit using GPG and verify the signature


# Git REmaster

Has political activists invaded your repo?
Have your leadership-group succumbed to peer-pressure?
Are non-technical people interfering with how you do your work?

Put shortly: Are some of your repos no longer defaulting to `git
master`, giving you inconsistencies between repos you work with?

**Good news! Git REmaster comes to the rescue!**

## Features

Git remaster has the following features:

* Automatically detect repos with standard-deviations
* Automatically fix repos with standard-deviations
* Ensures you can always work with git master locally!
* Ability to run as a global `post-checkout` hook, run when cloning
  new repos, meaning all repos you work with will be `master`-based,
  automatically.

# Installation

Just clone, link up in somewhere on your path:

````sh
cd $HOME/repos
git clone https://github.com/josteink/git-remaster
cd git-remaster
mkdir -p $HOME/bin
ln -s $PWD/git-remaster $HOME/bin/
````

## Usage - automatic

To install as a global `post-checkout` hook use the provided
installation script:

````sh
cd $HOME/repos/git-remaster
./install-hook.sh
````

From now on, git-remaster will be active on all new repos you clone!

## Usage - manual

Enter any repo, broken or not, and simply enter `git remaster`

````sh
cd someRepo

git checkout master  # error
git checkout main    # thats lame

# fix it up!
git remaster

git checkout main    # error
git checkout master  # much better

git pull             # still works!

# done
````

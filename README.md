
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

# Installation

Just clone, link up in somewhere on your path:

````sh
cd $HOME/repos
git clone https://github.com/josteink/git-remaster
cd git-remaster
mkdir -p $HOME/bin
ln -s $PWD/git-remaster $HOME/bin/
````

## Usage

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

# TODO

* Add ability to run automatically as git `post-checkout` when cloning new repos, making it globally installed and active at all times.


# Git Definitions
##Whats up Andrew
**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is the management of changes to source code over time. Version control is useful because it allows you to go back in time (I explain it to my non-tech friends as similar to a save point in play station). It also allows teams to work on projects more efficently and allows early detection of conflicts.

* What is a branch and why would you use one?
A branch is essentially a copy of a repository. A branch is used when making updates to the code. Useing a branch allows you to keep the master clean.

* What is a commit? What makes a good commit message?
A commit is basically a new save point(I fixed or updated something and add it to my local repository). A good commit message is a short clear description of what you did. I personally like all my messages in present tense following the same format ie I prefer ("Add a picture of a cat to about page") rather than ("added a picture of a cat")


* What is a merge conflict?
In short a merge conflict occurs because there is conflicting information within the content trying to be merged. For example say I make a branch from master and you make a branch from master and we both add an infoMe.html file to the root directory. On line 10 I put a line of code <h2>My name is george</h2> on line 10 you also put a line of code<h1>My name is Name</h1>. Because line 10 cannot be both of our names, when we merge we would end up with a conflict.
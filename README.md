
<!--#echo json="package.json" key="name" underline="=" -->
db-adminer-php-build-on-github-ci
=================================
<!--/#echo -->

<!--#echo json="package.json" key="description" -->
Advanced GitHub CI workflows for vrana&#39;s Adminer, the nice database
management and editing tool.
<!--/#echo -->


Motivation
----------

[Adminer](https://github.com/vrana/adminer/) is my favorite database
management and editing tool.
One day, I wanted to compile my own variation of it,
but I didn't want to install all the tools on my dev machine.
I'd rather have automatic build-and-release in the GitHub CI.



Usage
-----

* Clone this repo.
* Create a branch with a `README.md`
  that has a chapter "Branch config" like below.
* Push that branch.
* Go to the "Actions" tab of your repo.
* Select the Actions workflow "Build a branch".
* On the right, click "Run workflow".
* Select the branch you want to build.
* Confirm.



### Branch config

* Build from: https://github.com/vrana/adminer/tree/master




Known issues
------------

* Needs more/better tests and docs.





<!--#toc stop="scan" -->

&nbsp;


License
-------
<!--#echo json="package.json" key="license" -->
GPL-2.0-only
<!--/#echo -->

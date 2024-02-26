# Setup

## Installation

Running the `./install.sh` script will configure your environment to
use the git hooks.

## Git repository configuration

Running the `config-git-hooks` script will configure your git
repository to use the installed hook.
This script can be installed in your path through the `./install.sh`
script.

## Uninstallation

Edit your project's git config file and remove the `hooksPath`
configuration:

```diff
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
-	hooksPath = /home/user/.githooks
```

# Hooks

## pre-commit

The given pre-commit hook will look for Perl files (.pl/.pm) who have
been changed in the current commit then run `perl -c` on them.

### Notes

This version is a PoC (Proof of concept), you may encounter slow
performance on huge code base as the computation is sequential.

# Usage

## Installation

Running the `./install.sh` script will configure your environment to
use the git hooks.

## Git repository configuration

Running the `config-git-hooks` script will configure your git
repository to use the installed hook.
This script can be installed in your path through the `./install.sh`
script.

# Hooks

## pre-commit

The given pre-commit hook will look for Perl files (.pl/.pm) who have
been changed in the current commit then run `perl -c` on them.
#! /bin/sh
# install.sh

SRC_HOOKSDIR=hooks
DEST_HOOKSDIR=~/.githooks

BIN_DIR=bin
CONFIG_BIN=config-git-hooks
INSTALL_BIN_DIR=~/bin

echo "The following git hooks will be installed in $DEST_HOOKSDIR:"
for file in $SRC_HOOKSDIR/*; do
    echo "  - $file"
done

ls $DEST_HOOKSDIR 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Creating $DEST_HOOKSDIR"
    mkdir -p $DEST_HOOKSDIR
fi

echo "Copying git hooks in $DEST_HOOKSDIR"
cp -r $SRC_HOOKSDIR/* $DEST_HOOKSDIR/

ls $INSTALL_BIN_DIR 1>/dev/null 2>/dev/null
if [ $? -eq 0 ]; then
    echo "Running $CONFIG_BIN will configure a git repository to use the installed git hooks"

    read -p "Found $INSTALL_BIN_DIR directory, do you want to install $CONFIG_BIN there? (y/N)" n
    if [ "$n" = 'y' ]; then
        echo "Installing $CONFIG_BIN in $INSTALL_BIN_DIR"
        cp $BIN_DIR/$CONFIG_BIN $INSTALL_BIN_DIR
    fi
fi




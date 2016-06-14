#!/bin/sh

# The script makes rotating full backup, keeping previous copy as well as current
# If backup archiving operation fails, then previous backups are kept and rotation is not performed

# Setup - change as needed
TARGET=~/target
BKPDIR=~/backup
BKPNAME=mybackup

# Script code below, do not change unless you're sure

NEWPATH=${BKPDIR}/${BKPNAME}-new.tar.gz
CURPATH=${BKPDIR}/${BKPNAME}-current.tar.gz
PREVPATH=${BKPDIR}/${BKPNAME}-prev.tar.gz


# Create new current backup
if tar -zcf $NEWPATH -C / $TARGET; then

  # Rotate existing backups
  rm -f $PREVPATH

  if [ -f $CURPATH ]; then
    mv $CURPATH $PREVPATH
  fi

  mv $NEWPATH $CURPATH

fi

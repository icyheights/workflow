#!/bin/sh

I3DIR="~/.i3"
I3CONFIG="$I3DIR/config"
I3STATUSCONFIG="~/.i3status.conf"
AUTORUN="$I3DIR/autorun.sh"

mkdir $I3DIR
cp ./config $I3CONFIG
cp ./i3status.conf $I3STATUSCONFIG
cp ./autorun.sh $AUTORUN
chmod 744 $AUTORUN

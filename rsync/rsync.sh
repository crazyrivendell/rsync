#!/bin/bash
src=/data
#set like rsyncd.conf
rsync_passwd_file=/webserver/rsync/rsyncd_server.passwd

if [ ! -e "$src" ] || [ ! -e "/usr/bin/rsync" ] || [ ! -e "$rsync_passwd_file" ]; then
echo "Check File and Folder"
exit 1
fi


rsync --daemon --config=/webserver/rsync/rsyncd.conf

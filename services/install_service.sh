#!/bin/bash
FILE=$1
echo "Move service file $FILE"
cp --verbose $FILE /lib/systemd/system/$FILE
echo "set permission"
chmod 644 /lib/systemd/system/$FILE
echo "restart service"
systemctl daemon-reload
sudo systemctl enable $FILE
systemctl restart $FILE

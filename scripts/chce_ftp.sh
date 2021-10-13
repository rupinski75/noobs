#!/bin/bash
# FTP installation script
# Authors: Mariusz 'maniek205' Kowalski

apt update
apt install -y vsftpd systemctl
sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
systemctl enable vsftpd
systemctl restart vsftpd

echo "FTP server has installed. Use your credentials to log in on port 21"

#!/bin/bash
set -x

echo "*** Generating key ***"

# Trial 1 - Not working
# ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -a -N ""
# ls /tmp/sshkey

# Trial 2 - Not working
# XYZ=$(expect -c "spawn ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q
# expect \"Enter passphrase (empty for no passphrase):\"
# send \"\r\"
# expect \"Enter same passphrase again:\"
# send \"\r\"
# ")

# Trial 3 - Working
ssh-keygen -t rsa -f /tmp/id_rsa -q -P ""

spawn scp /tmp/id_rsa <username>@<ipaddress or host_name>:./
expect "password: "
send "<password>\r"


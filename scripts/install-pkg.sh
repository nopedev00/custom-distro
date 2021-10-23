#!/bin/bash

apt update

apt install sudo -y
echo 'sudo installed'

USERS=$(cat /etc/passwd | grep /home | cut -d ':' -f1)

for user in ${USERS}
do
  echo "$user was added to sudo group"
  usermod -aG sudo $user
done

apt install wget -y
echo 'wget installed'
apt install curl -y
echo 'curl installed'
apt install bspwm -y
echo 'bspwm installed'
apt install xorg -y
echo 'xorg installed'
apt install kitty -y
echo 'kitty installed'

mkdir -p /home/$USERS/.config/bspwm
mkdir -p /home/$USERS/.config/sxhkd

cp /usr/share/doc/bspwm/examples/bspwmrc /home/$USERS/.config/bspwm/ 
cp /usr/share/doc/bspwm/examples/sxhkdrc /home/$USERS/.config/sxhkd/

sed -i "s/urxvt/kitty/" /home/$USERS/.config/sxhkd/sxhkdrc

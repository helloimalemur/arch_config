#after chroot
passwd
ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime
hwclock --systohc
rm -rf /etc/locale.conf
echo "LANG=en_US.UTF-8" > /etc/locale.conf
mv /etc/locale.gen /etc/locale.gen.bkp
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US ISO-8859-1" >> /etc/locale.gen
locale-gen
echo "kale" >> /etc/hostname
mkinitcpio -P
pacman -S $(cat ./packages_list)

##enable services
systemctl enable iwd
#systemctl start iwd
systemctl enable NetworkManager
#systemctl start NetworkManager
systemctl enable ufw
#systemctl start ufw
systemctl enable sshd
#systemctl start sshd
systemctl enable gdm

ufw allow 22/tcp

#setup user and add to sudo group
#useradd -m foxx
#passwd foxx
#usermod -a -G sudo foxx
#echo "export VISUAL='nano'" >> ~/.bashrc
#echo "export VISUAL='nano'" >> ~/.bash_profile





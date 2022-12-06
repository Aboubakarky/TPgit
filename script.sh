#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner

# creation de l'utilisateur 

adduser abk

# integration de l'utilisateur dans le geoupe sudo

usermod -aG sudo abk

# 

mkdir /home/abk/.ssh
cd /home/abk/.ssh
touch Authorized_user
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbdXJpvnzzHzi4A9b1/pPq11Bkdiboa0QofKf6RQut/nRdsyInvHzfrfGNbg2B1p3/uJ+G16wBxu8HpmvjO2HYb+VrkwD9CZyzxCqgIwdpsbJERmhTY70MH2Kfrvbm/O5TQr1UCJxHfdcdbGBGE6Oqio6Hh1qfVyKbaJps5k5z/SaS3s4XARwABrDJD5SvvfE7FMsn2KlJSRhmeK6xcOL5pnRkogfcRGPXk/XmKPJf5fNMKzR1xfdTu5GrT8MJ2NpgJod8HYLwGpvnrp2gY+8T0uhsSmPEC7DZnDewRMEnQvj4on3y56DzRpOLMUPP/zhA+rU5+SNabhZzLt6Xfo6WuCfBOeBTIBc+SnMIG7vnpx1UInDeB62OsGwE49GSjWPFdVh1nEbgHsrVouUQOalbZhOWWpY8VA0A1GsjI0tH3DX1jmrIqe+5BMyUH/75OgMH9Zz/AjH3F77u/N5/JV+P8q/vimQC7Xaq67+/kFeHuutAyqjM7jeXxcmPadTr/MU= aboub@PC_ABK" >> /home/abk/.ssh/Authorized_user


# Redemarrer le service sshd 

systemctl restart sshd 


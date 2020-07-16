ln -sf /usr/share/zoneinfo/Asia/Tehran /etc/localtime
hwclock --systohc
cp locale.gen /etc/locale.gen 
locale-gen
echo "holycomputer" > /etc/hostname
cp hosts /etc/hosts
mount /dev/nvme0n1p1 /boot/efi/
yes | pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi/ --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
./packages.sh
passwd
useradd -m salarmgh
usermod -aG sudo salarmgh
usermod -aG wheel salarmgh
usermod -aG audio salarmgh
passwd salarmgh
visudo
./post.sh

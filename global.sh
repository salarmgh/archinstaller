fdisk -t gpt /dev/nvme0n1 <<EOF
g
n
1

+300M
t
1
n
2


w
EOF

mkfs.vfat /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2

mount /dev/nvme0n1p2 /mnt
pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
mkdir /mnt/boot/efi
cp * /mnt/installer
arch-chroot /mnt
cd /installer
./chroot.sh
exit
reboot

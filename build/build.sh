OS=$PWD
cd buildroot_x86-64
make BR2_EXTERNAL="$OS/external" "x86-64_defconfig"
make
cd $OS
cp buildroot_x86-64/output/images/rootfs.iso9660 Rosehip.iso
echo "DONE"

#!/bin/sh
echo "----------------------------------------------------"
echo " START INSTALL Trust-NG Proxmox "
echo "----------------------------------------------------"
echo ""
echo "----------------------------------------------------"
echo "download file backup trust-ng"
echo "----------------------------------------------------"
wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.1.0.vma.zst -P /var/lib/vm/dump/

echo "----------------------------------------------------"
echo "download file sha1sum"
echo "----------------------------------------------------"
wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.1.0.vma.zst.sha1sum -P /var/lib/vm/dump/

echo "----------------------------------------------------"
echo "restore backup vm trust-ng"
echo "----------------------------------------------------"
qmrestore /var/lib/vz/dump/vzdump-qemu-dnstrustng-1.1.0.vma.zst 200 --storage local 

echo "===================================================="
echo " *** DONE *** "
echo "===================================================="


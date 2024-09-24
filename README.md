# Trust-NG

Install Trust-NG Pada Proxmox 8

1. Akses Proxmox (via WEB / SHH)
   ![image](https://github.com/user-attachments/assets/c30a133c-6596-4271-bf9f-c8f5c1bce942)
 <h1 align="center">Contoh Akses via WEB</h1>

![image](https://github.com/user-attachments/assets/3e0fb7ee-6593-45de-bdf0-ce26d9a33523)
<h1 align="center">Contoh Akses via SSH</h1>

2. Akses Folder /var/lib/vz/dump/
   ##
       cd /var/lib/vz/dump/
   
4. Download File Backup Proxmox yang sudah di sediakan
   ##
       wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.0.3.vma.zst
   ##
       wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.0.3.vma.zst.sha1sum

5. Restore File yang sudah di backup
   ##
       qmrestore /var/lib/vz/dump/vzdump-qemu-dnstrustng-1.0.3.vma.zst 150 --storage local
Pada Perintah di atas hasil restore menjadi vm150, tinggal di sesuaikan dengan vm number nya

![image](https://github.com/user-attachments/assets/af892b8f-9d6c-4c2d-944b-f172baa24eab)

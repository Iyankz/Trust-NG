# Trust-NG

# Opsi Pertama A (Manual)
Install Trust-NG Pada Proxmox 8

1A. Akses Proxmox (via WEB / SSH)
   ![image](https://github.com/user-attachments/assets/c30a133c-6596-4271-bf9f-c8f5c1bce942)
 <h1 align="center">Contoh Akses via WEB Gambar 1A.1</h1>

![image](https://github.com/user-attachments/assets/3e0fb7ee-6593-45de-bdf0-ce26d9a33523)
<h1 align="center">Contoh Akses via SSH Gambar 1A.2</h1>

2A. Akses Folder /var/lib/vz/dump/
   ##
      cd /var/lib/vz/dump/
   
4A. Download File Backup Proxmox yang sudah di sediakan
   ##
      wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.0.3.vma.zst
   ##
      wget http://download-trustng.resolver.id:40080/vzdump-qemu-dnstrustng-1.0.3.vma.zst.sha1sum

5A. Restore File yang sudah di backup
   ##
      qmrestore /var/lib/vz/dump/vzdump-qemu-dnstrustng-1.0.3.vma.zst 150 --storage local
Pada Perintah di atas hasil restore menjadi vm150, tinggal di sesuaikan dengan vm number nya

![image](https://github.com/user-attachments/assets/af892b8f-9d6c-4c2d-944b-f172baa24eab)

6. beri ip dhcp pada VM, sebaiknya beri ip public supaya bisa dipatch (metode push via ssh) utk update versi atau bug patch
7. start VM
8. masuk via browser ke https://ip_anda:40443 dengan login admin pass trust-ng
9. ganti password, simpan password sebaik-baiknya
10. klik clients, isikan acl network ip clients yang boleh resolve, jika anda isi dengan 0.0.0.0/0 maka akan jadi open resolver, semua ip boleh query
11. untuk ganti ip dari dhcp menjadi statik, caranya buang centang dhcp, isikan ip dengan benar
12. klik reload system utk apply perubahan, atau biar lebih yakin lagi, klik reboot
13. jika semua sudah berfungsi baik, silahkan isi form Ownership untuk pendataan
14. Selesai

# Opsi Kedua B (Otomatis)
1B. Akses Proxmox Via WEB/SSH (Seperti pada langkah 1A (Gambar 1A.1 atau 1A.2))
2B. Copy Script di Bawah :
##
      wget --no-check-certificate https://raw.githubusercontent.com/Iyankz/Trust-NG/refs/heads/main/install.sh  -P /var/lib/vz/dump/
##
      chmod +x /var/lib/vz/dump/install.sh
##
      sh /var/lib/vz/dump/install.sh

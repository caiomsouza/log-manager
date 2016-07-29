# NFS
```
mount –t nfs 192.168.10.254:/home/public /home/public
```

# Real World Example:
```
mount -t nfs 10.248.2.150:/backuplocation /mnt/backup/
```

# 4.4. Mounting an ext4 File System
An ext4 file system can be mounted with no extra options, same as any other file system:

```
~]# mount block_device /mount/point
```

https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/5/html/Deployment_Guide/s1-filesystem-ext4-mount.html


Links:
https://pplware.sapo.pt/linux/configuracao-de-um-servidor-e-cliente-nfs-no-centos-7/

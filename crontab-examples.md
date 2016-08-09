# Tips

### Linux command example to run a Job
```
su - caiomoreno -c /opt/project/k_home/CONTROL_kjb_job_name.sh &
```

### Shell Script Example

CONTROL_kjb_job_name_script.sh
```
export KETTLE_HOME=/opt/project/k_home
sh /opt/pentaho/data-integration/kitchen.sh -file=/opt/project/control/kjb_job_name_script.kjb > /opt/project/log/job_name_`date +\%Y-\%m-\%d-\%H-\%M`.log

```
### Opening Crontab
```
crontab -e
```

# Stop Cron on Red Hat / CentOS / Fedora
```
sudo service crond stop
```

# Start Cron on Red Hat / CentOS / Fedora
```
sudo service crond start
```

# Status Cron on Red Hat / CentOS / Fedora
```
sudo service crond status
```

# Restart Cron on Red Hat / CentOS / Fedora
```
sudo service crond restart
```

Source:
http://www.cyberciti.biz/faq/howto-linux-unix-start-restart-cron/

## Run every 90 minutes between 3 am to 23pm
```
*/180 3-23 * * * su - pentaho -c /opt/project/k_home/CONTROL_kjb_job_name_script.sh
```

## CentOS boot Scripts
```
cd /etc/init.d/
```

Real example:

```
[root@server01 log]# cd /etc/init.d/
[root@server01 init.d]# ls
auditd            esama      iptables      netconsole  ntpd            restorecond  rpcsvcgssd  single     stinit
autofs            esapma     jexec         netfs       ntpdate         rhsmcertd    rsyslog     snmpd      sysstat
blk-availability  functions  killall       network     postgresql-9.4  rpcbind      sandbox     snmptrapd  udev-post
crond             halt       lvm2-lvmetad  nfs         radiusd         rpcgssd      saslauthd   sshd
esafma            ip6tables  lvm2-monitor  nfslock     rdisc           rpcidmapd    sendmail    ssmagent
[root@ISBPRDI01 init.d]#
```

## Editing file /etc/fstab
This is the file we need to change to add an auto mount.

Real Example<BR>
Add the line in the end.<BR>
```
/dev/sdb /opt/file_mgmt ext4 rw 0 0
```

How to mount a new drive on startup<BR>
http://askubuntu.com/questions/154180/how-to-mount-a-new-drive-on-startup<BR>

fstab<BR>
https://wiki.archlinux.org/index.php/Fstab<BR>

Editing fstab to automount partitions at startup<BR>
https://community.linuxmint.com/tutorial/view/1513<BR>
Mounting Partitions Automatically<BR>
https://help.ubuntu.com/community/AutomaticallyMountPartitions<BR>
5.9.5. Mounting File Systems Automatically with /etc/fstab<BR>
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Introduction_To_System_Administration/s2-storage-mount-fstab.html<BR>
3.7. Mounting and Unmounting File Systems<BR>
https://www.freebsd.org/doc/handbook/mount-unmount.html<BR>
4.3. Unmounting a File System<BR>
https://www.centos.org/docs/5/html/Global_File_System/s1-manage-unmountfs.html<BR>
CentOS Init startup scripts<BR>
https://support.suso.com/supki/CentOS_Init_startup_scripts<BR>
How To Configure a Linux Service to Start Automatically After a Crash or Reboot – Part 2: Reference<BR>
https://www.digitalocean.com/community/tutorials/how-to-configure-a-linux-service-to-start-automatically-after-a-crash-or-reboot-part-2-reference<BR>
The Upstart Event System: What It Is And How To Use It<BR>
https://www.digitalocean.com/community/tutorials/the-upstart-event-system-what-it-is-and-how-to-use-it<BR>
How To Create a systemd Service in Linux (CentOS 7)<BR>
https://scottlinux.com/2014/12/08/how-to-create-a-systemd-service-in-linux-centos-7/<BR>


More about it:
```
/etc/init.d/
vi /etc/rc.d/rc.local

vi /etc/rc.d/init.d/

vi /etc/inittab

/etc/init.d

 vi autofs ??

vi /etc/auto.master

vi /user/sbin/automount

/etc/auto.net
```

The /etc/rc.d/rc.local script is executed by the init command at boot time or when changing runlevels. Adding commands to the bottom of this script is an easy way to perform necessary tasks like starting special services or initialize devices without writing complex initialization scripts in the /etc/rc.d/init.d/ directory and creating symbolic links.

The /etc/rc.serial script is used if serial ports must be setup at boot time. This script runs setserial commands to configure the system's serial ports. Refer to the setserial man page for more information.

https://www.centos.org/docs/5/html/Installation_Guide-en-US/s1-boot-init-shutdown-run-boot.html

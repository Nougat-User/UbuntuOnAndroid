# Installation
- Download archive
- Unpack archive (/sdcard/UbuntuOnAndroid-master)
```
cd /sdcard/UbuntuOnAndroid-master/
sh install.sh
```

# Removing Ubuntu
- Restart your device for unmount all resources
```
mount -o rw,remount /system
rm /system/bin/ubstart
rm -rf /data/local/ubuntu
```
# Other Ubuntu rootfs architectures
- Download rootfs for your CPU architecture on [Ubuntu Rootfs Repository](http://cdimage.ubuntu.com/ubuntu-base/releases/)
- Put download archive to directory "rootfs"
- Rename archive from "ubuntu-base-*.tar.gz" to "ubuntu-rootfs.tar.gz"
  
# Android 10(Q) issuse
- /system path in android 10 is READ-ONLY
- Use ubstart script (without copying to /system/bin) in UbuntuOnAndroid-master/scripts/
```
sh /sdcard/UbuntuOnAndroid-master/scripts/ubstart
```

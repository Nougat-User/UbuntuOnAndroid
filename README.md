# Installation

  @Download archive
  @Unpack archive (/sdcard/UbuntuOnAndroid-master)
  
  1)  cd /sdcard/UbuntuOnAndroid-master/
  2)  sh install.sh

# Removing Ubuntu

  @Restart your device for unmount all resources
  
  1)  mount -o rw,remount /system
  2)  rm /system/bin/ubstart
  3)  rm -rf /data/local/ubuntu

# Other Ubuntu rootfs architectures

  @Download rootfs for your CPU architecture on http://cdimage.ubuntu.com/ubuntu-base/releases/
  @Put download archive to directory "rootfs"
  @Rename archive from "ubuntu-base-*.tar.gz" to "ubuntu-rootfs.tar.gz"
  
  # Android 10(Q) issuse
    @/system path in android 10 is READ-ONLY
    @Use ubstart script (without copying to /system/bin) in UbuntuOnAndroid-master/scripts/
    1)  sh /sdcard/UbuntuOnAndroid-master/scripts/ubstart

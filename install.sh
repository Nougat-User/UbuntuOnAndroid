#!/system/bin/sh

#Read-Write system
mount -o rw,remount /
mount -o rw,remount /system

#Unpack rootfs to /data/local/ubuntu
mkdir -p /data/local/ubuntu
tar -xzf ./rootfs/ubuntu-rootfs.tar.gz --exclude='dev' -C /data/local/ubuntu

#Copy script to /system/bin
cp ./scripts/ubstart /system/bin/
chmod 777 /system/bin/ubstart
cp ./scripts/post-setup.sh /data/local/ubuntu/root
chmod +x /data/local/ubuntu/root/post-setup.sh

#Other setup
echo "nameserver 8.8.8.8" > /data/local/ubuntu/etc/resolv.conf
echo "nameserver 8.8.4.4" >> /data/local/ubuntu/etc/resolv.conf
chmod 644 /data/local/ubuntu/etc/resolv.conf
mkdir -p /data/local/ubuntu/dev
echo "127.0.0.1 localhost" > /data/local/ubuntu/etc/hosts
echo "::1   localhost localhost.localdomain" >> /data/local/ubuntu/etc/hosts

#Done
echo "Start Ubuntu 18.04 - ubstart"
echo "After chrooting run post-setup.sh!"

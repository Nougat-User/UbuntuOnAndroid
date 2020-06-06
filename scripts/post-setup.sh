#Fixing network
groupadd -g 3003 aid_inet
usermod -a -G aid_inet root
adduser --force-badname --system --home /nonexistent --no-create-home --quiet _apt || true
usermod -g 3003 _apt

#Updating system
apt update
apt -y upgrade
apt -y install dialog apt-utils sudo wget curl iputils-ping git zip unzip busybox net-tools systemd iproute2 nano vim wireless-tools openssh-server openssh-client resolvconf binutils coreutils util-linux

echo "Done! Restart for apply changes."
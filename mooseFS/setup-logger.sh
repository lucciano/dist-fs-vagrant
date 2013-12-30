cd mfs-1.6.27
./configure --disable-mfschunkserver --disable-mfsmount --with-default-user=vagrant --with-default-group=vagrant --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib

make
sudo make install

echo 192.168.1.2	mfsmaster  | sudo tee -a /etc/hosts


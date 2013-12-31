cd mfs-1.6.27
./configure --disable-mfschunkserver --disable-mfsmount --with-default-user=vagrant --with-default-group=vagrant --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib

make
sudo make install

echo 192.168.30.2	mfsmaster  | sudo tee -a /etc/hosts

sudo cp /vagrant/logger-rc.local /etc/rc.local

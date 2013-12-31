cd mfs-1.6.27
./configure --disable-mfschunkserver --disable-mfsmount --with-default-user=vagrant --with-default-group=vagrant --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib
make
sudo make install
sudo cp /vagrant/mfsmaster.cfg.dist /etc/mfs/mfsmaster.cfg 
sudo cp /vagrant/mfsexports.cfg /etc/mfs/mfsexports.cfg

cd /var/lib/mfs
sudo cp metadata.mfs.empty metadata.mfs 

sudo cp /vagrant/master-rc.local /etc/rc.local

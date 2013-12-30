cd mfs-1.6.27
./configure --disable-mfsmaster --disable-mfsmount --with-default-user=vagrant --with-default-group=vagrant --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib
make
sudo make install

cd /etc/mfs
sudo cp mfschunkserver.cfg.dist mfschunkserver.cfg 
sudo cp mfshdd.cfg.dist mfshdd.cfg

echo 192.168.1.2	mfsmaster  | sudo tee -a /etc/hosts

dd if=/dev/zero of=/var/chunk bs=1024 count=1 seek=$((2*1024*1024-1))
yes | sudo mkfs -t ext3 /var/chunk
mount -t ext3 -o loop /var/chunk /mnt/
sudo chown vagrant:vagrant /mnt/

echo /mnt | sudo tee -a /etc/mfs/mfshdd.cfg

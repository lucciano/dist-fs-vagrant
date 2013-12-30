sudo apt-get update
sudo apt-get install -q -y pkg-config libfuse-dev zlib1g-dev
rm -rf mfs*
wget http://moosefs.org/tl_files/mfscode/mfs-1.6.27-1.tar.gz
tar zxvf mfs-1.6.27-1.tar.gz

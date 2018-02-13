sudo apt-get upgrade -y
sudo rpi-update
#sudo reboot

sudo apt-get install -y build-essential git cmake pkg-config
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libatlas-base-dev 

cd ~
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout 3.4.0
cd ~
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv_contrib
git checkout 3.4.0

sudo apt-get install -y python2.7-dev python3-dev
pip install numpy
cd ~/opencv
mkdir build
cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D BUILD_EXAMPLES=ON ..

#with tbb
cmake -D CMAKE_CXX_FLAGS="-D TBB_USE_GCC_BUILTINS=1 -D __TBB_64BIT_ATOMICS=0" -D ENABLE_VFPV3=ON -D ENABLE_NEON=ON -D BUILD_TESTS=OFF -D WITH_TBB=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D CMAKE_INSTALL_PREFIX=/usr/local -D CMAKE_BUILD_TYPE=Release ..


make
sudo make install
sudo ldconfig

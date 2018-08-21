cd $HOME
git clone git://git.drogon.net/wiringPi
cd wiringPi && ./build

set -e

cd $HOME
sudo apt-get install subversion
svn co http://svn.clifford.at/handicraft/2015/icoprog
cd icoprog && make install

sudo apt-get install build-essential clang bison flex libreadline-dev
sudo apt-get install gawk tel-dev libffi-dev git mercurial graphviz
sudo apt-get install xdot pkg-config python python3 libftdi-dev

cd $HOME
git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd icestorm && make && sudo make install

cd $HOME
git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd arachne-pnr && make && sudo make install

cd $HOME
git clone https://github.com/cliffordwolf/yosys.git yosys
cd yosys && make && sudo make install
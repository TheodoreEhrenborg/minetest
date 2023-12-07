set -e
cd lib/zmqpp
mkdir build
cmake .. -G "Unix Makefiles"
make

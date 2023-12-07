cd lib/zmqpp
git submodule update --init
mkdir build
cmake .. -G "Unix Makefiles"
make

FROM ubuntu:22.04
RUN apt-get update && apt-get install -y make lsb-release sudo python3-pip git
WORKDIR /usr/src/minetest/
COPY Makefile /usr/src/minetest/
COPY util/minetester/install_deps.sh /usr/src/minetest/util/minetester/install_deps.sh
RUN make linux_deps #install debian dependencies, equivalent commands are nessesary for other distros
COPY build_requirements.txt /usr/src/minetest/
RUN make python_build_deps #install build dependencies into the local python environment (we reccomend using a venv)
#RUN git init
#COPY .gitmodules /usr/src/minetest/
#RUN git add .gitmodules
#RUN make repos #init submodules
COPY util/minetester/build_sdl2.sh /usr/src/minetest/util/minetester/build_sdl2.sh
COPY lib/SDL /usr/src/minetest/lib/SDL
RUN make sdl2 #build sdl2

COPY util/minetester/build_zmqpp.sh /usr/src/minetest/util/minetester/
COPY lib/zmqpp /usr/src/minetest/lib/zmqpp
RUN make zmqpp #build zmqpp

COPY util/minetester/compile_proto.sh /usr/src/minetest/util/minetester/
COPY proto /usr/src/minetest/proto
COPY minetester/proto /usr/src/minetest/minetester/proto
COPY src /usr/src/minetest/src
RUN make proto #create c++ and python protobuf files

COPY util/minetester/build_minetest.sh /usr/src/minetest/util/minetester/
COPY CMakeLists.txt /usr/src/minetest
COPY lib/irrlichtmt/ .
RUN make minetest #build minetest binary

COPY util/minetester/build_minetester.sh /usr/src/minetest/util/minetester/
COPY setup.py /usr/src/minetest/setup.py
COPY builtin /usr/src/minetest/builtin
COPY client /usr/src/minetest/client
COPY clientmods /usr/src/minetest/clientmods
COPY cursors /usr/src/minetest/cursors
COPY fonts /usr/src/minetest/fonts
COPY games /usr/src/minetest/games
COPY misc /usr/src/minetest/misc
COPY mods /usr/src/minetest/mods
COPY po /usr/src/minetest/po
COPY textures /usr/src/minetest/textures
RUN apt-get update && apt-get install -y python-is-python3 python3.10-venv
COPY README.md /usr/src/minetest/README.md
COPY minetester /usr/src/minetest/minetester
RUN make minetester #build minetester python library
RUN pip install -e .
#RUN make install #install python library into local environment along with nessesary dependencies
#RUN make demo #run the demo script
#RUN make clean #clean up build artifacts

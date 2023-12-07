FROM ubuntu:22.04
RUN apt-get update && apt-get install -y make lsb-release sudo
COPY . /usr/src/minetest/
WORKDIR /usr/src/minetest/
RUN make linux_deps #install debian dependencies, equivalent commands are nessesary for other distros
RUN apt-get update && apt-get install -y python3-pip
RUN make python_build_deps #install build dependencies into the local python environment (we reccomend using a venv)
RUN apt-get update && apt-get install -y git
RUN make repos #init submodules
RUN make sdl2 #build sdl2
RUN make zmqpp #build zmqpp
RUN make proto #create c++ and python protobuf files
RUN make minetest #build minetest binary
RUN make minetester #build minetester python library
RUN make install #install python library into local environment along with nessesary dependencies
RUN make demo #run the demo script
RUN make clean #clean up build artifacts

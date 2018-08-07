FROM ubuntu:16.04

RUN echo "docker" > /etc/debian_chroot

# Install required packages for building CMake
RUN apt-get update && apt-get install -y git make g++

# Clone CMake repository
WORKDIR /root/
RUN git clone https://gitlab.kitware.com/cmake/cmake.git

# Build and install CMake
WORKDIR /root/cmake/
RUN mkdir /root/local/
RUN ./bootstrap --prefix=/root/local/ && make && make install

# Create sample.cmake
COPY sample.cmake /root/local/bin/

WORKDIR /root/local/bin/
CMD /bin/bash --login -i


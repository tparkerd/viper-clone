FROM ubuntu:16.04

LABEL AUTHOR="Tim Parker"
LABEL VERSION="1.0.0"

RUN apt-get update && \
  apt-get --yes install wget lsb-release apt-transport-https && \
  apt-get install --yes libzmq5 libhdf5-cpp-11 libcurl4-openssl-dev libssl-dev libhdf5-10 libboost-regex1.58.0 libboost-log1.58.0 libboost-atomic1.58.0 libboost-chrono1.58.0 libboost-date-time1.58.0 libboost-filesystem1.58.0 libboost-program-options1.58.0 && \
  export PLATFORM=$(lsb_release -cs) && \
  wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | apt-key add - && \
  echo "deb http://mirror.oxfordnanoportal.com/apt ${PLATFORM}-stable non-free" | tee /etc/apt/sources.list.d/nanoporetech.sources.list && \
  apt-get update && \
  apt-get install ont-guppy-cpu
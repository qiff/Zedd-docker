FROM debian:latest

RUN apt-get update && apt-get install git cmake build-essential libboost-all-dev gcc g++ -y 
RUN git clone https://github.com/qiff/Zedd ~/Zedd && make -C ~/Zedd/

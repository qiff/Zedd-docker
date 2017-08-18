FROM debian:latest

EXPOSE 7077
EXPOSE 7078

RUN apt-get update && apt-get install git cmake build-essential libboost-all-dev gcc g++ -y 
RUN git clone https://github.com/qiff/Zedd ~/Zedd && make -C ~/Zedd/
RUN ln -s /bin/zeddd ~/Zedd/build/release/src/zeddd

CMD /bin/zeddd

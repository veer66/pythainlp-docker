FROM debian:10
ENV LANG=C.UTF-8
RUN apt update && apt upgrade -y
RUN apt install -y git python3-dev python3-setuptools python3-numpy python3-pandas python3-sklearn
RUN cd /; git clone https://github.com/dmort27/epitran.git; cd epitran; git checkout b49d7cf; python3 setup.py install
RUN cd /; git clone https://github.com/veer66/pythainlp.git; cd pythainlp; git checkout 2.1.3; python3 setup.py install

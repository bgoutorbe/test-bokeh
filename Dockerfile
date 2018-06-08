FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 python3-pip

WORKDIR /test-bokeh
COPY * ./

RUN pip3 install -r requirements.txt

CMD ./serve.sh
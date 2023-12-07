FROM ubuntu:22.04

RUN apt update
RUN apt install git python3 python3-pip -y
RUN apt install iverilog=11.0-1.1 -y
RUN git clone https://github.com/ntu-eclab-ca-ta/PECO /root/peco

RUN mkdir -p /root/project
WORKDIR /root/project
COPY judge.yaml /root/project/judge.yaml

WORKDIR /root/peco
RUN git fetch
RUN git checkout export_id
RUN pip install -r requirements.txt

WORKDIR /root/

CMD ["python3", "peco/src/main.py", "-c", "project/judge.yaml"]

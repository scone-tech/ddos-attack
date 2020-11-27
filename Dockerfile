FROM alpine:latest

RUN apk add --update python3 py3-pip git tcpdump

RUN git clone https://github.com/scone-tech/ddos-attack.git ddos-attack
WORKDIR ddos-attack
# COPY requirements.txt .
# COPY api.txt .
# COPY bots.txt .
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "ddos-attack.py"]

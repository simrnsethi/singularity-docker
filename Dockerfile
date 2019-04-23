FROM ubuntu:latest

LABEL maintainer="bob.velghe@cern.ch" \
      description="Capstone runtime environement - base"

RUN apt-get update \
	&& apt-get install -y python3-pip python3-dev

COPY train_model.py .

CMD python3 train_model.py

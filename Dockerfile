FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install -y python3 python3-dev

COPY train_model.py .

CMD python3 train_model.py


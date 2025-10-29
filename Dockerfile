FROM python:3.8-slim-bookworm

RUN apt update && apt install -y git

COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

RUN mkdir /TelegramBot
WORKDIR /TelegramBot
COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]


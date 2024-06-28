FROM python:latest

RUN apt-get update -y && apt-get upgrade -y

RUN useradd -u myuser 10001

RUN pip3 install -U pip

WORKDIR /app

COPY . /app/

RUN chown -R myuser:myuser /app

USER myuser

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]

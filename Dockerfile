FROM python:latest

RUN apt-get update -y && apt-get upgrade -y

RUN useradd -u 10001 myuser

RUN pip3 install -U pip

WORKDIR /app

COPY . /app/

RUN chown -R myuser:myuser /app

USER myuser

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]

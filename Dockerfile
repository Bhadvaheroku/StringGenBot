FROM python:latest

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y build-essential libssl-dev libffi-dev python3-dev

RUN useradd -u 10014 myuser

RUN pip3 install -U pip

WORKDIR /app

COPY . /app/

RUN chown -R myuser:myuser /app

USER myuser

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start"]

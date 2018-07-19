FROM ubuntu:xenial
MAINTAINER Muhammad Fahrizal Rahman "riesal@gmail.com"
RUN apt-get update -y
RUN sed -i 's/archive.ubuntu.com/buaya.klas.or.id/g' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/buaya.klas.or.id/g' /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["movies.py"]

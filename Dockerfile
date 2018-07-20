FROM jfloff/alpine-python:2.7-onbuild
MAINTAINER Muhammad Fahrizal Rahman "riesal@gmail.com"
RUN apk update
RUN apk add curl net-tools wget drill
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["movies.py"]

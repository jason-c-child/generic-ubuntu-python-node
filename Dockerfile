# config
FROM ubuntu
ENV PYTHONUNBUFFERED 1
EXPOSE 8000/tcp
# deps
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-add-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get -y install curl gnupg libpq-dev python3.7 python3.7-dev python3-pip libcairo2-dev
RUN pip3 install pipenv
RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -
RUN apt-get -y install nodejs

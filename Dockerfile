FROM python:3.8-alpine 
LABEL name="suraj" 
# Maintainer : MAINTAINER has been deprecated

    #which helps to run python in unbuffered mode,
    #which is revommended in running docker container, 
    #the reseaons for this is which does not allow python to buffer the outputs 
    #just prints some direct and avoids some complications in the docker container


ENV PYTHONUNBUFFERED 1 
    
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

# this pulls a python base image installing flask and awscli calling run script
FROM python:3

WORKDIR /app

RUN pip install flask

RUN pip install awscli

ARG AWS_ACCESS_KEY_ID=defaultValue
ARG AWS_SECRET_ACCESS_KEY=defaultValue
ARG AWS_DEFAULT_REGION='eu-central-1'

ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
ENV AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION

COPY run.sh .

EXPOSE 8001

CMD ["/app/run.sh"]

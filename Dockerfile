FROM node:12.16.2-alpine3.11

RUN cd /tmp && wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz && \
   tar xzf dynamodb_local_latest.tar.gz && rm -f dynamodb_local_latest.tar.gz 

RUN apk add openjdk11

COPY run-dynamodb.sh /bin
RUN chmod a+x /bin/run-dynamodb.sh


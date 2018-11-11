FROM golang:alpine

RUN go get golang.org/x/tour
EXPOSE 3999

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh

FROM golang:1.19.3-bullseye

RUN mkdir code \
    && mkdir code/movies

WORKDIR code

COPY ./src .
RUN go get .

VOLUME /go/code/movies

CMD ["go", "run", "."]
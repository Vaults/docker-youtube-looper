FROM alpine

RUN apk add ffmpeg

ADD ./entrypoint.sh entrypoint.sh

CMD chmod +x entrypoint.sh && ./entrypoint.sh
FROM python:alpine
LABEL org.opencontainers.image.source="https://github.com/DavesCodeMusings/tea-runner"

ARG APP_UID=1000
ARG APP_GID=1000

WORKDIR /usr/src/app
RUN apk update
RUN apk add git rsync
RUN apk add docker
RUN addgroup -g $APP_GID appuser && adduser -D -u $APP_UID -G appuser appuser
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY tea_runner.py .
RUN chown -R appuser:appuser /usr/src/app
USER appuser
CMD [ "python", "tea_runner.py" ]

#
# SERVER DOCKERFILE
#

FROM python:3.9.12-alpine


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN apk add --no-cache --virtual .build-deps ca-certificates gcc postgresql-dev linux-headers musl-dev libffi-dev jpeg-dev zlib-dev gcc python3-dev jpeg-dev


WORKDIR /app/server
COPY ../Pipfile ../Pipfile.lock /app/server/
RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile
COPY ./server /app/server/
ENV IN_DOCKER True


CMD ["./entrypoint.sh"]

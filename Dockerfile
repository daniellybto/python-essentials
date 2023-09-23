FROM python:3.8-slim AS python-3.8
MAINTAINER Danielly Brito

COPY ./app ./app
WORKDIR ./app
CMD ["python3"]

#para executar com o Volume na pasta /app:
# docker run -it -d -v ./app:/app python3

# para executar os scripts simples em python só rodar:
# docker exec -it ID_DO_CONTAINER python ARQUIVO.PY
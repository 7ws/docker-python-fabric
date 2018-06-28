FROM python:3.6

RUN pip install fabric==2.1.3

# Easier to mount things as /app
WORKDIR /app
ENTRYPOINT fab

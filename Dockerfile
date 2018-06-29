FROM python:3.6
WORKDIR /app

RUN pip install fabric==2.1.3

# Set up a custom entrypoint
ENTRYPOINT ["fab"]

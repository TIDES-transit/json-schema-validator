FROM python:3.11-slim-bullseye

RUN pip install jsonschema requests jq

COPY . /

RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

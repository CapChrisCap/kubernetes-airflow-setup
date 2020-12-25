# only used for local development
FROM apache/airflow:1.10.12-python3.6

USER root

RUN apt-get update \
    && apt-get install -y gcc \
    && rm -rf /var/lib/apt/lists/*

USER airflow

COPY requirements.txt .
RUN pip3 install --user -r requirements.txt
COPY dags dags
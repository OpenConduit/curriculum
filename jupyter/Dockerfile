FROM jupyter/minimal-notebook:latest

USER root

# Install Postgres client (libpq)
RUN apt-get update && apt-get install -y \
    libpq-dev \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

RUN rm -rf /home/jovyan/wor

USER ${NB_UID}

# Install Python Libraries
RUN pip install --no-cache-dir \
    jupysql \
    duckdb \
    duckdb-engine \
    pandas \
    polars \
    pyarrow \
    psycopg2-binary \
    matplotlib \
    seaborn \
    faker \
    sqlalchemy
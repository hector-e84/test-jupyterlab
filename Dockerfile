FROM element84inc/filmdrop-analytics:2022.10.26
LABEL maintainer="hector@element84.com"

USER root

# Install build dependencies
RUN apt-get update
RUN apt-get -y install gcc
RUN pip3 install psycopg2-binary

# Install extra dependencies
RUN pip3 install --no-cache odc-stac planetary_computer jupyterthemes odc-ui odc-algo

# Install dark theme
RUN jt -t monokai

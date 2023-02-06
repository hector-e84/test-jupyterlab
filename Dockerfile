FROM element84inc/filmdrop-analytics:2022.10.26
LABEL maintainer="hector@element84.com"

USER root

# Install extra dependencies
RUN pip3 install --no-cache odc-stac planetary_computer jupyterthemes

# Install dark theme
RUN jt -t monokai

FROM docker.io/rocker/geospatial

RUN apt-get update

# CLI Tools ====================================================================

# Build Tools
# RUN sudo apt-get install -y python3-doit

# Data CLI Tools
# DuckDB: SQL CLI tool for . . . everything. 
# Visidata: CLI data tool ~267 MB
#           This is heavy, but it does a lot. Useful if you like CLI tools.
# ADD https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip /usr/local/bin
# RUN apt-get install -y visidata

# Database Specific Tools

# pgcli postgresql: CLI tools for Postgres
# RUN apt-get install -y pgcli

# Git Tools
# RUN apt-get install -y tig

# Useful CLI Applications
# RUN apt-get install -y \
#   btop \
#   fish


# Programming Languages ========================================================

# Language NodeJS ---------------------
# ~194 MB
# RUN apt-get install -y --no-install-recommends nodejs npm

# Language Python ---------------------
RUN apt-get install -y pipenv pipx

#USER rstudio

RUN pipx install radian && pipx ensurepath
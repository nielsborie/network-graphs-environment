# Copyright (c) Niels Borie.

FROM nielsborie/base-py39

LABEL maintainer="Niels BORIE"

# Create the environment:
COPY environment.yml .
RUN mamba env update --name py39 --file environment.yml --prune

# clean up pip cache
RUN rm -rf /root/.cache/pip/*



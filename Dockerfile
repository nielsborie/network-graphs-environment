# Copyright (c) Bleckwen Development Team.

FROM jupyter/tensorflow-notebook:5811dcb711ba

LABEL maintainer="Niels BORIE"

USER root

### --- Install python-tk (networkit dependencies)
RUN apt-get update && \
    apt-get install -y --no-install-recommends python-tk software-properties-common htop && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

### --- Install dependency gcc/g++
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test

### --- Install gcc/g++ (networkit dependencies)
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc-5 g++-5 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

### --- Update alternatives
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5

### --- Conda install tabulate, seaborn, networkx
RUN conda install --quiet --yes \
    'networkx' \
    'tabulate' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

### --- Install python-igraph
RUN conda install -c conda-forge python-igraph

### --- Downgrade pip
RUN $CONDA_DIR/bin/python -m pip install pip==9.0.1 

### --- Install networkit
RUN $CONDA_DIR/bin/python -m pip install networkit



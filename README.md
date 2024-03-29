# network-graphs-environment


| 👷 CI                                                                                                                                                                                                                       | 🚀 Release                                                                                                                                                                   | 🤖 Stable                                                                                                                                                                 | 🧪 Snapshot                                                                                                                                                                         |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [![GitHub CI](https://img.shields.io/github/workflow/status/nielsborie/network-graphs-environment/Build%20and%20Publish)](https://github.com/nielsborie/network-graphs-environment/actions/workflows/build_and_publish.yml) | [![GitHub release](https://img.shields.io/github/v/release/nielsborie/network-graphs-environment)](https://github.com/nielsborie/network-graphs-environment/releases/latest) | [![LATEST](https://img.shields.io/docker/v/nielsborie/network-graphs-environment/latest)](https://hub.docker.com/repository/docker/nielsborie/network-graphs-environment) | [![SNAPSHOT](https://img.shields.io/docker/v/nielsborie/network-graphs-environment?label=snapshot)](https://hub.docker.com/repository/docker/nielsborie/network-graphs-environment) |


The network-graphs-environment is a ready-to-run Docker image containing the python library networkit and other things.
---

![graph](docs/graph.png)

---

## What is Networkit?

NetworKit is a growing open-source toolkit for high-performance network analysis. Its aim is to provide tools for the analysis of large networks in the size range from thousands to billions of edges. For this purpose, it implements efficient graph algorithms, many of them parallel to utilize multicore architectures. These are meant to compute standard measures of network analysis, such as degree sequences, clustering coefficients and centrality. In this respect, NetworKit is comparable to packages such as NetworkX, albeit with a focus on parallelism and scalability. NetworKit is also a testbed for algorithm engineering and contains novel algorithms from recently published research.

More info at [Networkit documentation](http://networkit.parco.iti.kit.edu).


## What is igraph?

igraph is a collection of network analysis tools with the emphasis on efficiency, portability and ease of use. 
igraph is open source and free. 
igraph can be programmed in R, Python and C/C++.

More info at [igraph documentation](http://igraph.org/redirect.html).

---
# What is in there?

![logo2](docs/logo2.png)

---

## Specs
This is what you get out of the box when you create a container with the provided image/Dockerfile:
* Ubuntu 18.04
* Jupyter Notebook
* Conda Python 3.6.x
* GCC/G++ 5
* Python Machine Learning : [Numpy](http://www.numpy.org/), [Pandas](http://pandas.pydata.org/), [Matplotlib](http://matplotlib.org/), [SciPy](https://www.scipy.org/), [Seaborn](https://seaborn.pydata.org/),[scikit-learn](https://www.anaconda.com/what-is-anaconda/)
* Python graph libraries : [NetworkX](https://networkx.github.io/), [Networkit](http://networkit.parco.iti.kit.edu), [python-igraph](http://igraph.org/python/)
* Python Deep Learning : [Tensorflow](https://www.tensorflow.org/), [Keras](http://keras.io/)

---
## Setup
### Prerequisites
Install Docker following the installation guide for your platform: [here](https://docs.docker.com/engine/installation/)

---

## Obtaining the Docker image
* ### Option 1: Download the Docker image from Docker Hub
Available here : (https://hub.docker.com/r/nielsborie/network-graphs-environment/)

```bash
docker pull nielsborie/network-graphs-environment
```
* ### Option 2: Build the Docker image locally
1. #####  clone the repository
```bash
git clone https://github.com/nielsborie/network-graphs-environment.git
cd /network-graphs-environment
```

2. ##### basic building : 
```bash
docker build . -t network-graphs-environment
```

3. ##### If you have a proxy issue execute the following line : 
```bash
docker build . --no-cache --force-rm --build-arg http_proxy=<proxy> --build-arg https_proxy=<proxy> --build-arg no_proxy=localhost,<proxy>,<proxy>,.an.local -t network-graphs-environment
```

---

## Running the Docker image as a Container
Once we've built the image, we have all the frameworks we need installed in it. We can now spin up one or more containers using this image.


> **Note:**

> - This images is based on [jupyter-tensorflow docker](https://github.com/jupyter/docker-stacks/tree/master/tensorflow-notebook).
> - By default the image automatically launches a jupyter notebook on port 8887 of your localhost.

![jupyter](docs/jupyter.PNG)

* ### Basic run
Simplest command to launch the container.
```bash
docker run --name network-graphs-env -p 8887:8888 nielsborie/network-graphs-environment
```


##### If you don't want to be stick to your terminal, you can run it in detached mode (-d)

```bash
docker run --name network-graphs-env -d -p 8887:8888 nielsborie/network-graphs-environment
```

* ### Start & Stop
Once you create the container, all you need to do is launch it : 
```bash
docker start network-graphs-env
docker stop network-graphs-env
```

* ### Enter in the running container
Since you launched the container, you can get in and be root inside the image!
```bash
docker exec -it network-graphs-env /bin/bash
```

* ### Customize your Container
* ##### If you want a real password (and avoid copy/paste token step...) 
```bash
docker run --name network-graphs-env -d -p 8887:8888 -d nielsborie/network-graphs-environment start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba" 
```

> **Note:**

> - default password = bleckwen

* ##### If you want to share your current working folder, you can map it with "-v" or "--volume"
```bash
docker run --name network-graphs-env -p 8887:8888 -d -v /sharedfolder:/home/jovyan/work/ -e NB_UID=<your-UID/> --user root nielsborie/network-graphs-environment start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba"
```

| Parameter      | Explanation                                                                                                                                                                                                                                                                                       |
|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|`-it`             | This creates an interactive terminal you can use to iteract with your container                                                                                                                                                                                                                   |
|`--name`             | This set a name to our container, in our case we use `network-graphs-env` but you can change it                                                                                                                                                                                                   |
|`-p 8887:8888`    | This exposes the ports inside the container so they can be accessed from the host. The format is `-p <host-port>:<container-port>`. The default jupyter notebook runs on port 8888                                                                                                                |
|`-v /sharedfolder:/root/sharedfolder/` | This shares the folder `/sharedfolder` on your host machine to `/home/jovyan/work/sharedfolder/` inside your container. Any data written to this folder by the container will be persistent. You can modify this to anything of the format `-v /local/shared/folder:/shared/folder/in/container/` |
|`-e NB_UID=<your-UID> --user root`   | This fix permission issues under the container, you need to replace <your-UID> with your UID.  You can get it with : `id -u`                                                                                                                                                                      |
|`nielsborie/network-graphs-environment`   | This the image that you want to run. The format is `image:tag`. In our case, we use the image `network-graphs-environment` and tag `latest`                                                                                                                                                       |
|`start-notebook.sh --NotebookApp.password`   | It allows to launch the jupyter with a password already configured to `bleckwen`                                                                                                                                                                                                                  |

---


##### If you need to change the password check : 
[Jupyter notebook documentation](http://jupyter-notebook.readthedocs.io/en/stable/public_server.html)

##### You can find additionnal info here : 
[Jupyter docker documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html?highlight=password)

---






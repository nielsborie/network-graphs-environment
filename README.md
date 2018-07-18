# networkit-docker
The networkit-docker is a ready-to-run Docker image containing the python library networkit and and other things.
---
<p align="center">
<img src="https://github.com/nielsborie/networkit-docker/blob/master/view/graph.png" width=600 />
</p>

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


<p align="center">
<img src="https://github.com/nielsborie/networkit-docker/blob/master/view/logo2.png" width=800 />
</p>

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
Available here : (https://hub.docker.com/r/nielsborie/networkit-docker/)

```bash
docker pull nielsborie/networkit-docker
```
* ### Option 2: Build the Docker image locally
1. #####  clone the repository
```bash
git clone https://github.com/nielsborie/networkit-docker.git
cd /networkit-docker
```

2. ##### basic building : 
```bash
docker build . -t networkit-docker
```

3. ##### If you have a proxy issue execute the following line : 
```bash
docker build . --no-cache --force-rm --build-arg http_proxy=<proxy> --build-arg https_proxy=<proxy> --build-arg no_proxy=localhost,<proxy>,<proxy>,.an.local -t networkit-docker
```

---

## Running the Docker image as a Container
Once we've built the image, we have all the frameworks we need installed in it. We can now spin up one or more containers using this image.


> **Note:**

> - This images is based on [jupyter-tensorflow docker](https://github.com/jupyter/docker-stacks/tree/master/tensorflow-notebook).
> - By default the image automatically launches a jupyter notebook on port 8887 of your localhost.

<p align="center">
<img src="https://github.com/nielsborie/networkit-docker/blob/master/view/jupyter.PNG" width=700 />
</p>

* ### Basic run
Simplest command to launch the container.
```bash
docker run --name NETWORKIT -p 8887:8888 nielsborie/networkit-docker
```


##### If you don't want to be stick to your terminal, you can run it in detached mode (-d)

```bash
docker run --name NETWORKIT -d -p 8887:8888 nielsborie/networkit-docker
```

* ### Start & Stop
Once you create the container, all you need to do is launch it : 
```bash
docker start NETWORKIT
docker stop NETWORKIT
```

* ### Enter in the running container
Since you launched the container, you can get in and be root inside the image!
```bash
docker exec -it NETWORKIT /bin/bash
```

* ### Customize your Container
* ##### If you want a real password (and avoid copy/paste token step...) 
```bash
docker run --name NETWORKIT -d -p 8887:8888 -d nielsborie/networkit-docker start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba" 
```

> **Note:**

> - default password = bleckwen

* ##### If you want to share your current working folder, you can map it with "-v" or "--volume"
```bash
docker run --name NETWORKIT -p 8887:8888 -d -v <your-directory/>:/home/jovyan/work/ -e NB_UID=<your-UID/> --user root nielsborie/networkit-docker start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba"
```

| Parameter      | Explanation |
|----------------|-------------|
|`-it`             | This creates an interactive terminal you can use to iteract with your container |
|`--name`             | This set a name to our container, in our case we use `NETWORKIT` but you can change it |
|`-p 8887:8888`    | This exposes the ports inside the container so they can be accessed from the host. The format is `-p <host-port>:<container-port>`. The default jupyter notebook runs on port 8888 |
|`-v /sharedfolder:/root/sharedfolder/` | This shares the folder `/sharedfolder` on your host machine to `/home/jovyan/work/sharedfolder/` inside your container. Any data written to this folder by the container will be persistent. You can modify this to anything of the format `-v /local/shared/folder:/shared/folder/in/container/` |
|`-e NB_UID=<your-UID> --user root`   | This fix permission issues under the container, you need to replace <your-UID> with your UID.  You can get it with : `id -u` |
|`nielsborie/networkit-docker`   | This the image that you want to run. The format is `image:tag`. In our case, we use the image `ml-docker` and tag `latest` |
|`start-notebook.sh --NotebookApp.password`   | It allows to launch the jupyter with a password already configured to `bleckwen` |

---


##### If you need to change the password check : 
[Jupyter notebook documentation](http://jupyter-notebook.readthedocs.io/en/stable/public_server.html)

##### You can find additionnal info here : 
[Jupyter docker documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html?highlight=password)

---






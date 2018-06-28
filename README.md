# networkit-docker
The networkit-docker is a ready-to-run Docker image containing the python library networkit and and other things.

## What is Networkit?

NetworKit is a growing open-source toolkit for high-performance network analysis. Its aim is to provide tools for the analysis of large networks in the size range from thousands to billions of edges. For this purpose, it implements efficient graph algorithms, many of them parallel to utilize multicore architectures. These are meant to compute standard measures of network analysis, such as degree sequences, clustering coefficients and centrality. In this respect, NetworKit is comparable to packages such as NetworkX, albeit with a focus on parallelism and scalability. NetworKit is also a testbed for algorithm engineering and contains novel algorithms from recently published research.

More info at [Networkit documentation](http://networkit.parco.iti.kit.edu).

---

## What's in there? 

* Jupyter Notebook
* Conda Python 3.6.x
* Python Machine Learning : numpy, pandas, matplotlib, scipy, seaborn, scikit-learn
* Python graph libraries : networkx, networkit
* Python Deep Learning : TensorFlow+Keras

---

## How to run it? 
##### You can pull the already built image
* Available here : <https://hub.docker.com/r/nielsborie/networkit-docker/>
```bash
docker pull nielsborie/networkit-docker
```

##### And run it
```bash
docker run -p 8887:8888 nielsborie/networkit-docker start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba" 
```
**default password = bleckwen**

###### If you need to change the password check : 
[Jupyter notebook documentation](http://jupyter-notebook.readthedocs.io/en/stable/public_server.html)

###### You can find additionnal info here : 
[Jupyter docker documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html?highlight=password)

---

## How to build it? 
#### First clone the repository
```bash
git clone https://github.com/nielsborie/networkit-docker.git
cd /networkit-docker
```
#### Basic building : 
```bash
docker build . -t networkit-docker
```

#### If you have a proxy issue execute the following line : 
```bash
docker build . --no-cache --force-rm --build-arg http_proxy=<your-proxy> --build-arg https_proxy=<your-proxy> --build-arg no_proxy=<your-proxy> -t networkit-docker
```


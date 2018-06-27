## How to build
#### Basic building : 
```bash
docker build . -t networkit
```

#### If you have a proxy issue execute the following line : 
```bash
docker build . --no-cache --force-rm --build-arg http_proxy=<your-proxy> --build-arg https_proxy=<your-proxy> --build-arg no_proxy=<your-proxy> -t networkit
```
## How to run
```bash
docker run -p 8887:8888 networkit start-notebook.sh --NotebookApp.password="sha1:ff6a3551e13f:c3edadaa0cb4bed02293c96c14d755611069a4ba" 
```
** default password = bleckwen

##### If you need to change the password check : 
[Jupyter notebook documentation](http://jupyter-notebook.readthedocs.io/en/stable/public_server.html)

##### You can find additionnal info here : 
[Jupyter docker documentation](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html?highlight=password)

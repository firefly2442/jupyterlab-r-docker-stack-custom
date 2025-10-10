# jupyterlab-r-docker-stack-custom

A slightly customized version of [jupyterlab-r-docker-stack](https://gitlab.com/b-data/jupyterlab/r-project/docker-stack) with additional packages for deployment to Kubernetes.

## Building

```shell
docker compose build --pull
```

## Deployment

```shell
docker compose up -d
```

## Teardown

```shell
docker compose down
```

## References

* [jupyterlab-r-docker-stack](https://gitlab.com/b-data/jupyterlab/r-project/docker-stack)
* [zero-to-jupyterhub-k8s](https://github.com/jupyterhub/zero-to-jupyterhub-k8s)

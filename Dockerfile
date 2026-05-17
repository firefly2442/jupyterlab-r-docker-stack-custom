# https://gitlab.com/b-data/jupyterlab/r-project/docker-stack#run-container
FROM glcr.b-data.ch/jupyterlab/r/tidyverse:latest

USER root

# Install Java
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# https://docs.docker.com/build/guide/mounts/#add-a-cache-mount
RUN --mount=type=cache,target=/root/.cache/pip,sharing=locked pip install --prefix=/usr/local --break-system-packages --root-user-action=ignore \
    tqdm scikit-learn spacy nltk scipy numpy transformers pandas matplotlib plotly seaborn pyspark

USER jovyan


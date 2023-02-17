FROM continuumio/miniconda3:latest

RUN apt-get update && apt-get install -y ca-certificates --no-install-recommends \
        git \
        tmux

RUN pip install mlflow

WORKDIR /home/mount_folder/mlflow_server

ENTRYPOINT ["/bin/sh", "-c", "mlflow server -h 0.0.0.0 --backend-store-uri=sqlite:///mlflow.db"]


# docker attach {docker container name}
# cd /home/mount_folder/mlflow_server
# mlflow server -h 0.0.0.0 --backend-store-uri=sqlite:///mlflow.db
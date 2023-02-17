DOCKER_USERNAME ?= jmpark
DOCKER_IMAGE_NAME ?= mlflow
DOCKER_CONTAINER_NAME ?= jmpark_mlflow

# 도커 build를 위한 make 명령어
docker_build:
		docker build --no-cache -t ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME} .

docker_run:
		docker run -d -it --pid=host -p 5000:5000 -v /home/acu/바탕화면/mount_folder:/home/mount_folder --name ${DOCKER_CONTAINER_NAME} ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}
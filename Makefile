PKG=github.com/InfuseAI/nvidia_gpu_prometheus_exporter
REGISTRY=infuseai
IMAGE=nvidia_gpu_prometheus_exporter
TAG=0.3

build:
	docker build --pull -t ${REGISTRY}/${IMAGE}:${TAG} .

.PHONY: push
push:
	docker push ${REGISTRY}/${IMAGE}:${TAG}

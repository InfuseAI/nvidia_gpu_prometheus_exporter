module nvidia_gpu_prometheus_exporter

go 1.15

require (
	github.com/mindprince/gonvml v0.0.0-20190828220739-9ebdce4bb989
	github.com/prometheus/client_golang v1.9.0
	google.golang.org/grpc v1.27.1
	k8s.io/kubelet v0.0.0
)

replace k8s.io/kubelet => ./staging/src/k8s.io/kubelet

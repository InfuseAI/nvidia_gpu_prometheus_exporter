FROM golang as build

WORKDIR /app
COPY go.mod /app/
COPY staging /app/staging

RUN go mod download

COPY . /app/
RUN go build .

FROM ubuntu:18.04
COPY --from=build /app/nvidia_gpu_prometheus_exporter /
CMD /nvidia_gpu_prometheus_exporter
ENV NVIDIA_VISIBLE_DEVICES=all
EXPOSE 9445

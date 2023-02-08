# DEVNOTE

## Development

```bash
./webui.sh --api --server-name 0.0.0.0
```

## Docker

(아직) 빌드 시 모델 파일이 포함되어야 함

```bash
docker build . -f docker/Dockerfile -t stable-diffusion-webui

docker run -d --rm --gpus all -P --name stable-diffusion-webui-runner stable-diffusion-webui

docker logs -f stable-diffusion-webui-runner
```

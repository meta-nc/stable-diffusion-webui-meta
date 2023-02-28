# DEVNOTE

## Environment
- pyenv

```bash
(stable-diffusion-webui) leeminxji@am04:~/repos/stable-diffusion-webui-meta$ python -V
Python 3.10.6
```

## Settings
`webui-user.sh` 확인 및 수정

## Development
```bash
./webui.sh --api --listen --enable-insecure-extension-access --xformers
```

`--xformers`: ControlNet을 위한 옵션

## 옵션 테스트

```bash
./webui.sh
```

(VSCode로 Port Forwarding 함)

- localhost:[port] 접속 O
- localhost:[port]/docs 접속 O
  - Request/Response O
- [host ip]:[port] 접속 X
- [host ip]:[port]/docs 접속 X
- Reload X
- http.rest
  - localhost:[port] X `({ "detail": "Not Found" })`
  - [host ip]:[port] X

```bash
./webui.sh --api
```

(VSCode로 Port Forwarding 함)

- localhost:[port] 접속 O
- localhost:[port]/docs 접속 O
  - Request/Response O
- [host ip]:[port] 접속 X
- [host ip]:[port]/docs 접속 X
- Reload X
- http.rest
  - localhost:[port] O
  - [host ip]:[port] X

```bash
./webui.sh --listen
```

(VSCode로 Port Forwarding 함)

- localhost:[port] 접속 O
- localhost:[port]/docs 접속 O
  - Request/Response O
- [host ip]:[port] 접속 O
- [host ip]:[port]/docs 접속 O
- Reload X
- http.rest
  - localhost:[port] X `({ "detail": "Not Found" })`
  - [host ip]:[port] X `({ "detail": "Not Found" })`

## Docker

(아직) 빌드 시 모델 파일이 포함되어야 함

```bash
docker build . -f docker/Dockerfile -t stable-diffusion-webui

docker run -d --rm --gpus all -P --name stable-diffusion-webui-runner stable-diffusion-webui

docker logs -f stable-diffusion-webui-runner
```

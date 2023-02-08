FROM ubuntu:18.04

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    software-properties-common \
    git \
    #
    libgl1

RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python3.10 \
    python3.10-venv && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1


RUN adduser --disabled-password coder

WORKDIR /home/coder/workspace

RUN chown -R coder /home/coder/workspace

COPY --chown=coder . /home/coder/workspace

USER coder

EXPOSE 7860

CMD ["./webui.sh", "--api", "--listen"]

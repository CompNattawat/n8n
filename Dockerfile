FROM n8nio/n8n:latest-debian

USER root

# Install ffmpeg + audio/image tools + curl/jq (เผื่อใช้งาน API หรือ audio processing)
RUN apt-get update && \
    apt-get install -y \
        ffmpeg \
        curl \
        jq \
        libsox-fmt-mp3 \
        sox \
        imagemagick \
        python3 \
        python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

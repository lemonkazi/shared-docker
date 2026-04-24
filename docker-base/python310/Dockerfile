FROM python:3.10-slim

WORKDIR /usr/src/app

# Install system dependencies only
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Keep generic — do NOT copy requirements.txt or project files
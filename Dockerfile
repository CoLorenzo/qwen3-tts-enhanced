FROM nvidia/cuda:12.4.0-runtime-ubuntu22.04

# Install Python and dependencies
RUN apt-get update && apt-get install -y \
    python3.12 \
    python3.12-venv \
    python3-pip \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Set Python 3.12 as default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.12 1

WORKDIR /app

# Install Python packages
RUN pip install --upgrade pip
RUN pip install torch torchaudio --index-url https://download.pytorch.org/whl/cu124
RUN pip install qwen-tts gradio noisereduce

# Copy app
COPY app.py .

# Create directories
RUN mkdir -p saved_voices outputs

# Expose port
EXPOSE 8000

# Run app
CMD ["python", "app.py"]

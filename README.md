# 🎙️ Qwen3-TTS Enhanced

Clone any voice in seconds. 100% local, runs on your GPU.

An enhanced interface for [Qwen3-TTS](https://github.com/QwenLM/Qwen3-TTS) with multi-reference cloning, variation generation, and audio preprocessing.

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

---

## ✨ Key Enhancements

- **Multi-Reference Cloning** - Combine up to 5 audio samples for higher quality
- **Variation Generation** - Create 1-5 outputs and pick the best one
- **Audio Preprocessing** - Automatic normalization + optional noise reduction
- **One-Click Install** - Just run `install.bat` on Windows

---

## Features

| Feature | Description |
|---------|-------------|
| 🎤 **Voice Clone** | Clone voices from short audio (3+ seconds) |
| 🎭 **Create Voice** | Combine multiple samples with per-file transcripts |
| 👤 **Custom Voice** | 10 preset speakers with emotion control |
| ✨ **Voice Design** | Create voices from text descriptions |
| 💾 **Save & Load** | Keep voices as portable `.pt` files |

---

## Requirements

- **Windows 10/11** or **Linux** (Docker)
- **NVIDIA GPU** with 8GB+ VRAM
- **Python 3.10+**

---

## Quick Start

### Windows

```batch
install.bat    # One-time setup
run.bat        # Launch app
```

### Docker

```bash
docker-compose up --build
```

Open **http://localhost:8000**

> First run downloads ~4GB of models.

---

## Tips

- **Longer audio = better clones** (10-30 seconds ideal)
- **Add transcripts** for improved accuracy
- **Enable "Clean audio"** for noisy recordings
- **Try multiple variations** to find the best result

---

## License

**Apache 2.0** - See [LICENSE](LICENSE)

Built on [Qwen3-TTS](https://github.com/QwenLM/Qwen3-TTS) by Alibaba Cloud.

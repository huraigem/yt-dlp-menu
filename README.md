# YT-DLP Interactive Downloader

An interactive Windows batch script for downloading videos and audio using **yt-dlp**, with optional **embedded subtitles** support.

Developed by **HUR-AI-GEM**  
Author: **SSS**  
Year: **2026**

---

## ✨ Features

- 📹 Download video only (no subtitles)
- 🎬 Download video with **embedded subtitles** (MKV)
  - Supports **auto-generated YouTube subtitles**
  - Allows manual language selection (e.g. `en-US`, `tr-TR`)
- 🎵 Download audio only (MP3)
- Interactive menu-driven interface
- Portable (no installation required)

---

## 📂 Required Folder Structure

The script **must** be run from a folder structured as follows:
<pre>project-folder/ 
│ 
├─ yt-dlp-menu.bat 
├─ yt-dlp.exe 
│ 
└─ ffmpeg/ 
  └─ bin/ 
      └─ ffmpeg.exe 
</pre>

> ⚠️ Important  
> `yt-dlp.exe` must be in the **same folder** as the batch file.  
> `ffmpeg.exe` must be located at `./ffmpeg/bin/ffmpeg.exe`.

---

## 🔧 Requirements

- Windows 10 / 11
- `yt-dlp.exe`
- `ffmpeg.exe`
- Internet connection

No Python installation required.

---

## ▶️ Usage

1. Double-click `yt-dlp-menu.bat`
2. Paste a YouTube (or supported site) URL
3. Choose one of the options:
<pre>
[1] Download video only (no subtitles)
[2] Download video with embedded subtitles (MKV)
[3] Download audio only (MP3)
</pre>



---

## 📝 Subtitle Handling (Option 2)

When selecting **Option 2**, the script will:

1. Display all available subtitles using:

yt-dlp --list-subs

2. Ask you to enter a subtitle language code

### Examples:
| Subtitle Type | Language Code |
|--------------|---------------|
| English (auto) | `en-US` |
| Turkish (auto) | `tr-TR` |
| French (auto) | `fr-CA` |
| Manual English | `en` |

The selected subtitle will be:
- Converted to **SRT**
- Embedded into the video
- Saved in **MKV format** for best compatibility

---

## 🎬 Recommended Video Players

For best subtitle rendering:
- **MPV**
- **PotPlayer**

VLC may show overlapping or jumping subtitles with auto-generated captions.

---

## ⚠️ Known Limitations

- Auto-generated YouTube subtitles may contain overlapping lines
- VLC does not always handle ASR subtitles correctly
- Some platforms may restrict subtitle availability

---

## 📜 License

Licensed under the **Apache License, Version 2.0 (January 2004)**

You may obtain a copy of the License at:

http://www.apache.org/licenses/LICENSE-2.0


Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an **"AS IS" BASIS**,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND.

---

## 🤝 Contributions

Pull requests and improvements are welcome.

Please ensure changes remain:
- Portable
- Dependency-minimal
- Windows batch compatible

---

## 📧 Credits

- [**yt-dlp** GitHub](https://github.com/yt-dlp/yt-dlp) project and contributors
- [**FFmpeg** GitHub](https://github.com/FFmpeg/FFmpeg) project
- Developed by **HUR-AI-GEM**


# Session Brief

Daily work summary across your projects, delivered to Telegram.

**Designed for Claude Code.** Optimized interactive setup experience on Claude Code; core functionality works on any platform.

## What It Does

- 📋 Scans your git projects for work done yesterday
- 🏷️ Categorizes commits by type (feat / fix / docs)
- 🎯 Reads project status from `.planning/STATE.md` (if available)
- 🔔 Sends a formatted brief to Telegram every morning
- ⏰ Fully customizable: time, projects, monitored files

## Installation

Choose your preferred method:

### Option 1: Git Clone

```bash
cd ~/.claude/skills
git clone https://github.com/bryaninjapan/bryan-skills-sessionbrief.git session-brief
```

### Option 2: Download ZIP

1. Go to [GitHub repo](https://github.com/bryaninjapan/bryan-skills-sessionbrief)
2. Click **Code** → **Download ZIP**
3. Extract to `~/.claude/skills/session-brief`

### Option 3: Create Directory & Copy Files

```bash
mkdir -p ~/.claude/skills/session-brief
# Then copy SKILL.md, README.md, etc. from this repo
```

**See [INSTALL.md](INSTALL.md) for detailed instructions.**

---

## Quick Start

### 1. In Claude Code

```bash
/session-brief --setup
```

Answer a few questions:
- What time to send the brief? (e.g., 7 AM)
- Which projects to monitor?
- Your Telegram bot token and user ID
- (Optional) Which files to monitor per project

### 2. Claude generates your script

The skill creates a custom bash script tailored to your setup.

### 3. Install cron

```bash
crontab -e
```

Paste the cron command Claude provides.

## Features

| Feature | Supported |
|---------|-----------|
| Daily automated briefs | ✅ |
| Multiple projects | ✅ |
| Git commit analysis | ✅ |
| GSD project status | ✅ (if .planning/STATE.md exists) |
| Telegram notifications | ✅ |
| Customizable schedule | ✅ |
| Hermes runtime | ✅ (clarify form mapping, v1.1.0) |
| OpenCode runtime | ✅ (question form mapping, v1.2.0) |

## How It Works

1. **Questions** — SKILL.md asks you about your setup
2. **Generation** — Generates a bash script based on your answers
3. **Installation** — Helps you install cron
4. **Execution** — Runs daily at your specified time
5. **Delivery** — Sends formatted brief to Telegram

## Example Brief

```
📋 Session Brief - 2026-09-05

📦 project-a
GSD: Phase 18 | Milestone: Dispatch Script Split
📝 Commits (3):
✨ Features:
  • feat: add new feature
🐛 Fixes:
  • fix: bug fix
📚 Docs:
  • docs: update guide

📦 project-b
📝 Commits (2):
  • feat: implement feature
  • fix: bug fix
```

## Requirements

- Bash 4+
- Git
- curl
- jq
- Telegram Bot (free, from @BotFather)

## Skill Usage

### Generate and Send Brief

```bash
/session-brief
```

### Setup (First Time)

```bash
/session-brief --setup
```

### Update Configuration

```bash
/session-brief --update
```

### Test Telegram Connection

```bash
/session-brief --test
```

## Project Structure

```
session-brief/
├── SKILL.md          # Interactive skill (all-in-one)
├── README.md         # This file
└── .gitignore
```

## Privacy & Security

- 🔒 All processing is local
- 🚫 No data sent to third-party servers (except Telegram Bot API)
- 📁 Telegram credentials stored locally in `~/.session-brief/config.json`

## Support

For issues or questions:
1. Run `/session-brief --test` to verify Telegram connection
2. Check `~/.session-brief/` for config files
3. Review Telegram bot settings at @BotFather

## License

MIT

## Roadmap

- [x] Hermes runtime support
- [x] OpenCode runtime support
- [ ] Multi-language support
- [ ] Custom brief templates
- [ ] Slack integration
- [ ] Email integration

---

**Made for GSD practitioners, works with any git project.**

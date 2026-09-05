# Installation Guide

Three ways to install Session Brief skill for Claude Code.

## Option 1: One-Line Quick Install (Recommended)

Run this in your terminal:

```bash
bash <(curl -sL https://raw.githubusercontent.com/bryaninjapan/bryan-skills-sessionbrief/main/install.sh)
```

This will:
- ✅ Create `~/.claude/skills/session-brief/` if needed
- ✅ Clone the repo
- ✅ Show you next steps
- Done! Then run `/session-brief --setup` in Claude Code

---

## Option 2: Manual Git Clone

If you prefer to install manually:

```bash
mkdir -p ~/.claude/skills
cd ~/.claude/skills
git clone https://github.com/bryaninjapan/bryan-skills-sessionbrief.git session-brief
```

Then in Claude Code:
```bash
/session-brief --setup
```

---

## Option 3: Download ZIP

1. Go to: https://github.com/bryaninjapan/bryan-skills-sessionbrief
2. Click the green **Code** button
3. Select **Download ZIP**
4. Unzip to: `~/.claude/skills/session-brief`

Then in Claude Code:
```bash
/session-brief --setup
```

---

## Verify Installation

After installing, check that the skill is accessible:

```bash
ls -la ~/.claude/skills/session-brief/
```

You should see:
```
SKILL.md
README.md
INSTALL.md
install.sh
.gitignore
```

---

## First Run

Open Claude Code and type:

```bash
/session-brief --setup
```

Claude will ask:
1. What time for the brief? (e.g., 7 AM)
2. Which projects to monitor?
3. Your Telegram bot token
4. Your Telegram user ID
5. (Optional) Which files to track per project

Then:
- ✅ Custom script generated
- ✅ Cron installed
- ✅ Test message sent to Telegram
- ✅ Done!

---

## Troubleshooting

### Skill not found after install

**Problem:** Claude says `/session-brief` not found

**Solution:**
1. Restart Claude Code (close and reopen)
2. Verify installation: `ls ~/.claude/skills/session-brief/SKILL.md`
3. Check that `SKILL.md` exists in the directory

### "Permission denied" on install.sh

**Problem:** `bash: ./install.sh: Permission denied`

**Solution:**
```bash
chmod +x ~/Documents/session-brief/install.sh
bash ~/Documents/session-brief/install.sh
```

Or use the curl method instead:
```bash
bash <(curl -sL https://raw.githubusercontent.com/bryaninjapan/bryan-skills-sessionbrief/main/install.sh)
```

### Git not found

**Problem:** `command not found: git`

**Solution:**
- Install Git: `brew install git` (macOS)
- Or use Option 3 (Download ZIP)

---

## Uninstall

To remove the skill:

```bash
rm -rf ~/.claude/skills/session-brief
```

Or to just disable cron (keep files):

```bash
crontab -e
# Find and delete the line with "session-brief"
```

---

## Update to Latest Version

If you installed via git:

```bash
cd ~/.claude/skills/session-brief
git pull origin main
```

Or reinstall:

```bash
rm -rf ~/.claude/skills/session-brief
bash <(curl -sL https://raw.githubusercontent.com/bryaninjapan/bryan-skills-sessionbrief/main/install.sh)
```

---

## Still Having Issues?

1. Check README.md: `cat ~/.claude/skills/session-brief/README.md`
2. Run test: `/session-brief --test`
3. Check config: `cat ~/.session-brief/config.json`
4. View logs: `log stream --predicate 'process == "logger" and eventMessage contains "session-brief"'`

---

**Questions or suggestions?** 
Open an issue on GitHub: https://github.com/bryaninjapan/bryan-skills-sessionbrief/issues

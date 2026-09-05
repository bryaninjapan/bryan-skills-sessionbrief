#!/bin/bash

# Session Brief Skill Installer
# Usage: bash install.sh

set -e

SKILLS_DIR="$HOME/.claude/skills"
SKILL_NAME="session-brief"
SKILL_DIR="$SKILLS_DIR/$SKILL_NAME"
REPO_URL="https://github.com/bryaninjapan/bryan-skills-sessionbrief.git"

echo "📦 Installing Session Brief Skill..."
echo ""

# Check if skills directory exists
if [ ! -d "$SKILLS_DIR" ]; then
    echo "Creating skills directory at $SKILLS_DIR"
    mkdir -p "$SKILLS_DIR"
fi

# Check if already installed
if [ -d "$SKILL_DIR" ]; then
    echo "⚠️  Session Brief already installed at $SKILL_DIR"
    echo ""
    echo "Options:"
    echo "  1. Update: cd $SKILL_DIR && git pull"
    echo "  2. Reinstall: rm -rf $SKILL_DIR && bash install.sh"
    echo "  3. Use: /session-brief --setup"
    exit 0
fi

# Clone the skill
echo "Cloning from $REPO_URL"
git clone "$REPO_URL" "$SKILL_DIR"

echo ""
echo "✅ Installation complete!"
echo ""
echo "Next steps:"
echo "  1. In Claude Code, run: /session-brief --setup"
echo "  2. Answer the questions (time, projects, Telegram)"
echo "  3. The skill will generate your custom script"
echo "  4. Cron will be installed automatically"
echo ""
echo "Questions? Read: $SKILL_DIR/README.md"

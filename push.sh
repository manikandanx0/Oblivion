#!/bin/bash

REPO_PATH="$HOME/projects/Oblivion"

# ===== COLORS =====
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m" # No Color

# ===== GO TO REPO =====
cd "$REPO_PATH" || {
  echo -e "${RED}❌ Failed to access repo at $REPO_PATH${NC}"
  exit 1
}

# ===== CHECK GIT =====
if [ ! -d ".git" ]; then
  echo -e "${RED}❌ Not a git repository!${NC}"
  exit 1
fi

# ===== SHOW STATUS =====
echo -e "${YELLOW}📂 Current changes:${NC}"
git status
echo ""

# ===== STAGE EVERYTHING =====
git add -A

# ===== CHECK IF ANYTHING TO COMMIT =====
if git diff --cached --quiet; then
  echo -e "${YELLOW}⚠️ No changes to commit.${NC}"
  exit 0
fi

# ===== SHOW STAGED DIFF =====
echo -e "${YELLOW}📦 Staged changes:${NC}"
git diff --cached --stat
echo ""

# ===== GET COMMIT MESSAGE =====
read -p "📝 Enter commit message (leave empty for auto): " msg

# ===== AUTO MESSAGE IF EMPTY =====
if [ -z "$msg" ]; then
  msg="update: $(date +'%d-%b %H:%M')"
  echo -e "${YELLOW}⚡ Using auto message: $msg${NC}"
fi

# ===== COMMIT =====
git commit -m "$msg"

# ===== DETECT CURRENT BRANCH =====
BRANCH=$(git branch --show-current)

# ===== PUSH =====
echo -e "${YELLOW}🚀 Pushing to origin/$BRANCH...${NC}"
git push origin "$BRANCH"

# ===== DONE =====
echo -e "${GREEN}🔥 Done. Changes pushed successfully!${NC}"
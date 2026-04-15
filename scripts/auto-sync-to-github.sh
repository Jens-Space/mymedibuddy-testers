#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR"

BRANCH="$(git rev-parse --abbrev-ref HEAD)"
DEBOUNCE_SECONDS=4
POLL_SECONDS=5

log() {
  printf '[auto-sync] %s\n' "$1"
}

commit_and_push() {
  local status
  status="$(git status --porcelain)"

  if [[ -z "$status" ]]; then
    return 0
  fi

  git add -A

  if git diff --cached --quiet; then
    return 0
  fi

  local message
  message="Auto update $(date '+%Y-%m-%d %H:%M:%S')"

  if git commit -m "$message"; then
    log "Committed changes: $message"
    git push origin "$BRANCH"
    log "Pushed to origin/$BRANCH"
  else
    log 'Nothing was committed.'
  fi
}

log "Watching $REPO_DIR on branch $BRANCH"
log 'This will auto-commit and push future changes.'

if command -v inotifywait >/dev/null 2>&1; then
  while inotifywait -qq -r -e close_write,create,delete,move --exclude '(^|/)\.git/|(^|/)docs/apk_icons/' "$REPO_DIR"; do
    sleep "$DEBOUNCE_SECONDS"
    commit_and_push
  done
else
  last_state="$(git status --porcelain)"
  while true; do
    current_state="$(git status --porcelain)"
    if [[ "$current_state" != "$last_state" ]]; then
      sleep "$DEBOUNCE_SECONDS"
      commit_and_push
      last_state="$(git status --porcelain)"
    fi
    sleep "$POLL_SECONDS"
  done
fi

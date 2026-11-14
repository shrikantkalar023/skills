#!/usr/bin/env bash
set -euo pipefail

plugin_dir="${HOME}/.cursor/plugins/local/shrikant"
alias_dir="${HOME}/.cursor/skills/shrikant:research"
repo_url="https://github.com/shrikantkalar023/skills.git"

if [[ -d "$plugin_dir/.git" ]]; then
  [[ "$(git -C "$plugin_dir" remote get-url origin)" == "$repo_url" ]]
  [[ -z "$(git -C "$plugin_dir" status --porcelain)" ]]
  git -C "$plugin_dir" pull --ff-only
else
  git clone "$repo_url" "$plugin_dir"
fi

mkdir -p "$alias_dir"
cat > "$alias_dir/SKILL.md" <<EOF
---
name: shrikant:research
description: Run Shrikant's multi-model research skill.
disable-model-invocation: true
---

Read \`$plugin_dir/skills/research/SKILL.md\` and follow it for the user's research request.
EOF

printf 'Installed Cursor plugin and /shrikant:research alias. Start a new session.\n'

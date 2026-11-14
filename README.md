# Shrikant Kalar's skills

Agent skills for research and engineering, packaged as the `shrikant` plugin for Claude Code, Codex and Cursor.

## Skills

- [research](skills/research/SKILL.md). Research with DeepSeek, Opus, Astra, Sol, and GLM in parallel. Combine verified findings and report refusals, failures, and confirmed model changes.

## Install

Claude Code:

```bash
claude plugin marketplace add shrikantkalar023/skills
claude plugin install shrikant@shrikant
```

Codex:

```bash
codex plugin marketplace add shrikantkalar023/skills
codex plugin add shrikant@shrikant
```

Cursor loads local plugins from `~/.cursor/plugins/local`. Clone the repo there. A symlink to a path outside that directory does not load.

```bash
git clone https://github.com/shrikantkalar023/skills ~/.cursor/plugins/local/shrikant
```

Restart the agent after install.

## Use

Claude Code: `/shrikant:research <question>`. Codex: `$shrikant:research <question>`. In Cursor, pick `research` from the skills list.

Requires an agent that can delegate to the listed models. T3 Code is supported. Model access depends on your configured providers.

## Customize

Edit the skill's panel and reasoning effort to match your setup. Unsupported effort settings need the nearest supported value.

Inspired by [Lauren Tan's pstack](https://github.com/cursor/plugins/tree/main/pstack) and [Matt Pocock's skills](https://github.com/mattpocock/skills).

[MIT License](LICENSE).

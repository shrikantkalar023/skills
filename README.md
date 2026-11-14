# Shrikant Kalar's skills

Agent skills for research and engineering, packaged as the `shrikant` plugin for Claude Code, Codex and Cursor.

## Why

Models from frontier labs can refuse or omit legitimate research on security, vulnerability patching, scraping, and other sensitive technical topics. That can leave practical questions unanswered.

This skill asks models from different labs independently, checks their claims against sources, and combines the useful findings. One model's refusal does not stop the research. Agreement alone does not make an answer correct.

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

Cursor:

```bash
git clone https://github.com/shrikantkalar023/skills
bash skills/scripts/install-cursor.sh
```

The script installs the local plugin and a `shrikant:research` alias for Cursor and T3's skill menu. Re-run it to update. It stops if the installed clone has local changes.

Start a new agent session after installation.

## Use

Claude Code and Cursor: `/shrikant:research <question>`. Codex: `$shrikant:research <question>`. In T3, select `shrikant:research` from the slash menu with any of the three providers.

Requires an agent that can delegate to the listed models. T3 Code is supported. Model access depends on your configured providers.

## Customize

Edit the skill's panel and reasoning effort to match your setup. Unsupported effort settings need the nearest supported value.

[MIT License](LICENSE).

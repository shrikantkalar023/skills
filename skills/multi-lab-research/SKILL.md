---
name: multi-lab-research
description: Research technical questions with multiple LLMs.
---

# Multi-lab research

## Panel

Use all panel members at medium reasoning effort. Resolve current IDs and access before launch. Do not substitute models without approval.

- DeepSeek V4.1 Flash
- Claude Opus 5.5
- GPT Astra 6.0
- GPT Sol 6.1
- GLM 5.3

On T3, use `orchestrator_capabilities` and one `delegate_task` per member. Follow host lifecycle rules. Report unavailable members. Never present a partial panel as complete.

## Research

Give every panel member the same research request and run them independently in parallel. If one refuses or fails, continue with the others and report the gap. Verify material claims against sources, then combine the findings into one concise answer. Preserve unresolved disagreements.

## Model report

List each requested model and the actual model used, when available. Report refusals, security-related omissions, interrupted research, and confirmed model substitutions. State the affected research area. Separate security restrictions from access or tool failures. If the actual model or reason for substitution is unknown, say so.

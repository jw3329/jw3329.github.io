---
title: "Curie"
description: "Open-source platform that runs LLM agents as co-workers inside a team's own Kubernetes, Slack, GitHub and Jira. Second-largest contributor."
date: 2025-07-01
tech: ["Rust", "Python", "Kubernetes", "Helm", "Claude API", "MCP", "Prometheus", "Grafana"]
github: "https://github.com/curie-eng/curie"
featured: true
---

Curie is an **open-source (Apache-2.0) platform for running LLM agents safely in real infrastructure**. Agents join a team as co-workers: they read alerts and tickets, investigate, propose changes and ask a human before doing anything risky.

## My role

I'm the **second-largest contributor**, with 560+ merged PRs since July 2026. Curie is now live with its first production client.

## What I built

- **Production agents for the first enterprise client** — a quarterly financial reporting agent built on QuickBooks Online data, and a brand marketing agent that generates on-brand images and video
- **SRE co-worker** — reads real-time alert emails, investigates Kubernetes, Prometheus and Grafana, and posts a diagnosis with suggested fixes in Slack
- **"Mean tester"** — an adversarial agent that tries to break other agents and issues a computed ship verdict, plus drift canaries that catch behavior changes
- **Agent safety model** — human approval flows, operator remediation policies, per-stage action receipts, sealed per-connector secrets and one Slack identity per bot
- **Cost control** — prompt-cache-safe resume and memory compaction to cut model spend
- **Rust `curie` CLI and Helm deployment** — one-file declarative installs, one-command repo onboarding and git-flow deploy targets

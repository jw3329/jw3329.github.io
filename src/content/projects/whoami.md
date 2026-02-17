---
title: "WhoAmI"
description: "Docker-based development environment that unifies frontend and backend services into a single, reproducible workflow."
date: 2019-01-01
tech: ["Docker", "Makefile", "Linux", "Shell"]
github: "https://github.com/mgjo5899/WhoAmIProject"
featured: false
---

WhoAmI is a collaborative project focused on creating a unified, reproducible development environment using Docker.

## The problem

Working across different operating systems (macOS, Windows, Linux) meant constant compatibility issues. Dependencies behaved differently, configurations drifted, and "it works on my machine" was a daily frustration.

## The solution

Docker containers standardize everything. By running all services inside containers, every developer gets the exact same environment regardless of their host OS.

## What I built

- **Docker containers** matching a Linux environment, eliminating cross-OS conflicts
- **Personal library** combining two separate open-source tools into a unified solution
- **Makefile** that builds Docker images and starts both frontend and backend services with a single command — `make` and you're running

## Impact

This project fundamentally shaped how I think about development environments. The patterns I learned here — containerization, Makefile-driven workflows, reproducible builds — became tools I brought to every team I've worked with since.

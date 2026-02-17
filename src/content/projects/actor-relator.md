---
title: "Actor Relator"
description: "Interactive network graph that maps actor-movie relationships by scraping and traversing Wikipedia data with BFS."
date: 2019-02-01
tech: ["React", "Node.js", "Express", "vis.js", "Cheerio", "Docker"]
github: "https://github.com/jw3329/actor-relator"
featured: true
---

Actor Relator visualizes the hidden connections between actors and movies using data scraped from Wikipedia.

## How it works

1. **Search** — user enters an actor name or movie title
2. **Validate** — the server hits the Wikipedia OpenSearch API to verify the term and detect whether it's an actor or movie
3. **Scrape** — Cheerio parses the Wikipedia page to extract filmographies, cast lists, directors, and more
4. **Traverse** — BFS (breadth-first search) explores related actors and movies outward from the seed node, with a configurable depth limit
5. **Visualize** — vis.js renders an interactive network graph where nodes are actors/movies and edges show collaborations

## Tech stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | React 16, Reactstrap, Bootstrap 4, Axios, vis.js |
| **Backend** | Node.js, Express |
| **Data** | Wikipedia API, Cheerio (web scraping) |
| **DevOps** | Docker, docker-compose, Makefile |
| **Dev** | concurrently, nodemon |

## Key features

- **Interactive graph** — click, drag, and zoom through the actor-movie network
- **Configurable depth** — control how many levels of connections to explore
- **Auto-detection** — automatically identifies whether a search term is an actor or movie
- **BFS traversal** — efficiently discovers connections without redundant scraping
- **Dockerized** — full stack runs with a single `docker-compose up`

# jw3329.github.io

Personal website and blog built with [Astro](https://astro.build). Fully static, deployed on GitHub Pages.

## Development

```bash
npm install
npm run dev
```

Open [http://localhost:4321](http://localhost:4321).

## Writing a new post

Create a markdown file in `src/content/writings/`. The file name is the URL slug.

```markdown
---
title: "My New Post"
description: "A brief description for SEO"
date: 2026-01-01
category: dev        # dev or personal
tags: ["docker", "devops"]
draft: false
---

Markdown content here...
```

## Adding a project

Create a markdown file in `src/content/projects/`:

```markdown
---
title: "Project Name"
description: "What it does"
date: 2026-01-01
tech: ["React", "Node.js"]
link: "https://example.com"
github: "https://github.com/..."
featured: true
---

Detailed description here...
```

## Build & Deploy

In **Settings > Pages**, the source is **GitHub Actions**. Every push to `main` builds the Astro site and deploys it to GitHub Pages; you can also run **Actions > Deploy to GitHub Pages > Run workflow** manually.

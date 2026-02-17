# jw3329.github.io

Personal website and blog built with [Astro](https://astro.build) + [Supabase](https://supabase.com). Deployed on GitHub Pages.

## Setup

### 1. Supabase

1. Create a project at [supabase.com](https://supabase.com)
2. Migrations run automatically in CI/CD — no manual SQL needed

### 2. Environment variables

Create a `.env` file in the project root:

```
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key-here
DATABASE_URL=postgresql://postgres.[project-ref]:[password]@aws-0-[region].pooler.supabase.com:6543/postgres
```

Find these in your Supabase dashboard:
- **SUPABASE_URL** and **SUPABASE_ANON_KEY**: Settings > API
- **DATABASE_URL**: Settings > Database > Connection string (URI)

### 3. GitHub Secrets

In your repo, go to **Settings > Secrets and variables > Actions** and add:

- `SUPABASE_URL`
- `SUPABASE_ANON_KEY`
- `DATABASE_URL`

### 4. GitHub Pages

Go to **Settings > Pages** and set source to **GitHub Actions**.

## Development

```bash
npm install
npm run dev
```

Open [http://localhost:4321](http://localhost:4321).

## Database Migrations

Migrations live in `supabase/migrations/` and run automatically on every deploy.

### Creating a new migration

```bash
npm run db:new -- add_column_to_writings
```

This creates a timestamped file in `supabase/migrations/`. Write your SQL, commit, and push — CI/CD applies it automatically.

### Running migrations locally

```bash
npm run db:migrate
```

Requires `DATABASE_URL` in your `.env`.

## Writing a new post

Add a row in **Supabase > Table Editor > writings**:

| Column | Example |
|---|---|
| `slug` | `my-new-post` |
| `title` | `My New Post` |
| `description` | `A brief description for SEO` |
| `content` | `Markdown content here...` |
| `category` | `dev` or `personal` |
| `tags` | `{docker, devops}` |
| `draft` | `false` |

The site rebuilds **daily at 6am UTC** automatically, or trigger manually from **GitHub Actions > Deploy to GitHub Pages > Run workflow**.

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

Pushes to `main` automatically:
1. Run pending database migrations
2. Build the Astro site (fetching latest writings from Supabase)
3. Deploy to GitHub Pages

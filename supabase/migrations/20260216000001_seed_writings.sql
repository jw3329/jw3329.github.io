-- Seed data: initial sample writings
-- Uses ON CONFLICT to be idempotent (safe to re-run)

INSERT INTO writings (slug, title, description, content, category, tags, draft, created_at) VALUES
(
  'hello-world',
  'Hello World — A Fresh Start',
  'Rebuilding my personal site and starting to write. Why I''m doing this and what to expect.',
  E'I''ve been meaning to write more for a while now. Not just code — but actual thoughts, reflections, and things I''ve learned along the way.\n\nThis site is a fresh start. I rebuilt it from the ground up with [Astro](https://astro.build), and I plan to use it as a space for two things:\n\n1. **Dev writings** — technical things I learn, build, or find interesting\n2. **Personal writings** — thoughts on life, career, and everything in between\n\n## Why write?\n\nAs a software engineer, I spend most of my time solving problems and building things. But I rarely take the time to reflect on *what* I''ve learned or *why* certain decisions matter. Writing forces me to think clearly.\n\n## What to expect\n\nI''ll write when I have something worth sharing. No schedule, no pressure. Just honest thoughts from someone who loves building things.\n\nIf you''re reading this — thanks for being here.',
  'personal',
  ARRAY['life', 'writing'],
  false,
  '2026-02-16T00:00:00Z'
),
(
  'docker-dev-environment',
  'Why I Use Docker for Everything',
  'How containerizing my development environment saved me from dependency hell and made onboarding painless.',
  E'Early in my career, I spent way too much time debugging environment issues. "It works on my machine" was practically a daily conversation.\n\nThen I discovered Docker, and everything changed.\n\n## The problem\n\nEvery developer on the team had a slightly different setup:\n- Different OS versions\n- Different dependency versions\n- Different configurations\n\nBugs that existed on staging but not locally. Features that worked for one person but broke for another. It was chaos.\n\n## The solution\n\nI started containerizing everything. Not just for deployment — for development too.\n\n```dockerfile\nFROM node:18-alpine\nWORKDIR /app\nCOPY package*.json ./\nRUN npm ci\nCOPY . .\nCMD ["npm", "run", "dev"]\n```\n\nCombined with a `Makefile`:\n\n```makefile\ndev:\n\tdocker-compose up --build\n\ntest:\n\tdocker-compose run --rm app npm test\n```\n\nOne command to start. One command to test. Every developer, same environment.\n\n## The results\n\nAt Homethrive, I initiated CI/CD integration testing using customized Docker images. This upgraded our testing from unit-based to integration-based, enhancing code coverage by 30%.\n\nI also introduced Makefile utilization to the team, reducing 80% of initial development startup time.\n\n## My advice\n\nIf you''re not containerizing your dev environment yet, start small. Pick one project, write a Dockerfile, and see how it feels. You won''t go back.',
  'dev',
  ARRAY['docker', 'devops', 'workflow'],
  false,
  '2026-02-15T00:00:00Z'
)
ON CONFLICT (slug) DO NOTHING;

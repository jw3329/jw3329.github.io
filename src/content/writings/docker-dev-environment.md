---
title: "Why I Use Docker for Everything"
description: "How containerizing my development environment saved me from dependency hell and made onboarding painless."
date: 2026-02-15T00:00:00+00:00
category: dev
tags: ["docker", "devops", "workflow"]
draft: false
---

Early in my career, I spent way too much time debugging environment issues. "It works on my machine" was practically a daily conversation.

Then I discovered Docker, and everything changed.

## The problem

Every developer on the team had a slightly different setup:
- Different OS versions
- Different dependency versions
- Different configurations

Bugs that existed on staging but not locally. Features that worked for one person but broke for another. It was chaos.

## The solution

I started containerizing everything. Not just for deployment — for development too.

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["npm", "run", "dev"]
```

Combined with a `Makefile`:

```makefile
dev:
	docker-compose up --build

test:
	docker-compose run --rm app npm test
```

One command to start. One command to test. Every developer, same environment.

## The results

At Homethrive, I initiated CI/CD integration testing using customized Docker images. This upgraded our testing from unit-based to integration-based, enhancing code coverage by 30%.

I also introduced Makefile utilization to the team, reducing 80% of initial development startup time.

## My advice

If you're not containerizing your dev environment yet, start small. Pick one project, write a Dockerfile, and see how it feels. You won't go back.

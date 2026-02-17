---
title: "SharingConcerns"
description: "Full-stack social platform where users post, comment on, and discuss concerns — like a Reddit-style forum for shared experiences."
date: 2019-12-10
tech: ["React", "Node.js", "Express", "MongoDB", "Redis", "Docker"]
github: "https://github.com/jw3329/sharingconcerns"
featured: true
---

SharingConcerns is a full-stack social platform designed as a space for users to share and discuss concerns with each other.

## Features

- **User authentication** — signup, login with session-based auth (bcrypt for password hashing)
- **Post concerns** — create posts with titles and descriptions
- **Engagement** — like/dislike posts and comments
- **Threaded comments** — nested comments with replies for deep discussions
- **Social graph** — follow/unfollow users, view posts from people you follow
- **Input validation** — express-validator for secure API inputs

## Tech stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | React 16, React Router, React Bootstrap, Axios |
| **Backend** | Node.js, Express, MongoDB (Mongoose), Redis |
| **Auth** | express-session, cookie-session, JWT, bcrypt |
| **DevOps** | Docker, Docker Compose (Mongo, Redis, client, server) |

## Architecture

The app is fully containerized with Docker Compose — spinning up MongoDB, Redis, the React client, and Express server with a single command. The backend exposes a REST API with documented endpoints for user management, posts, comments, and follows. Redis handles session storage for fast auth lookups.

This project demonstrates real-world patterns: session-based authentication, RESTful API design, data modeling with Mongoose, and separation of client and server concerns.

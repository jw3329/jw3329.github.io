---
title: "GradeView"
description: "Web app that lets students track course grades, visualize academic performance, and compare with peers across majors."
date: 2019-06-28
tech: ["React", "Flask", "SQLAlchemy", "Pandas", "Python"]
github: "https://github.com/jw3329/grade-view"
featured: false
---

GradeView addresses the need for students to see their academic performance in one place — instead of juggling transcripts or multiple systems.

## Features

- **User accounts** — registration, login, profile settings with profile images
- **Course management** — add courses by major and course number
- **GPA tracking** — enter grades with automatic letter-grade to GPA conversion (A+ → 4.0)
- **Visualization** — dashboard view of overall academic performance
- **Social features** — follow/unfollow other students to compare
- **Data processing** — Pandas for grade analytics and aggregation

## Tech stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | React 16, React Router, Reactstrap, Axios |
| **Backend** | Python 3.7, Flask, Flask-SQLAlchemy, Flask-CORS |
| **Data** | SQLite, Pandas, Marshmallow (serialization) |
| **Auth** | Flask-Login |

## Design

The data model supports majors, courses, professors, users, GPAs, and follow relationships. Marshmallow handles clean serialization between the database and API responses. Pandas powers the analytics layer, processing grade data for visualization.

This project combines frontend UX, backend data modeling, and data processing across JavaScript and Python — a true full-stack application.

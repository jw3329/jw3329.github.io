---
title: "Data Structure Implementation"
description: "9 core data structures implemented from scratch in C++ — linked list, BST, AVL, red-black tree, graph, hash map, heap, and more."
date: 2019-02-27
tech: ["C++", "Data Structures", "Make"]
github: "https://github.com/jw3329/data-structure-implementation"
featured: false
---

From-scratch implementations of fundamental data structures in C++, without relying on standard library containers.

## What's implemented

| Category | Structures |
|----------|-----------|
| **Linear** | Linked list (singly linked), Stack, Queue |
| **Trees** | Binary Search Tree, AVL Tree, Red-Black Tree |
| **Graphs** | Adjacency list with vertex/edge abstractions |
| **Hashing** | Hash map with collision handling |
| **Heaps** | Min-heap |
| **Sets** | Disjoint Set (Union-Find) |

## Design

Each module has its own `.cpp`/`.h` files with clear interfaces and a dedicated Makefile for compilation. The header-based design makes the structures reusable and testable in isolation.

## Why this matters

Implementing balanced trees with rotations (AVL, red-black), graph traversals, hash collision handling, and heap operations from scratch builds a deep understanding of how these structures actually work — not just how to use them from a library.

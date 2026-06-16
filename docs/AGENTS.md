# AI Agent Instructions

This document provides context for AI coding agents (e.g. GitHub Copilot) working in this repository.

## Repository purpose

This is a personal CLI repository containing tools and scripts across multiple languages. See the top-level `README.md` for the folder layout.

## Key rules

1. Always run `make check` after making changes to verify requirements are still met.
2. Follow the conventions in `docs/CONVENTIONS.md`.
3. Place new executables in `bin/` and make them executable (`chmod +x`).
4. Place shared resources in `ressources/` when they are used by more than one language folder.
5. Each language folder (`python/`, `kotlin/`, `typescript/`) has its own `README.md` — keep it up to date.

## Language-specific entry points

| Language | Build/run command |
|----------|-------------------|
| Python | `python3 <script>.py` or `uv run <script>.py` |
| Kotlin | `./gradlew run` (inside `kotlin/`) |
| TypeScript | `npm start` (inside `typescript/`) |

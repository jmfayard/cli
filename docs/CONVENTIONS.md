# Conventions

## General

- All scripts should be self-contained and runnable from their directory.
- Every folder has a `README.md` that explains its purpose and how to use it.
- Commit messages should be short and descriptive.

## Shell scripts

- Use `#!/usr/bin/env bash` as shebang.
- Use `set -euo pipefail` at the top of every script.

## Python

- Target Python 3.10+.
- Use [uv](https://github.com/astral-sh/uv) for dependency management when possible.

## Kotlin

- Use Gradle wrapper (`./gradlew`) for builds.
- Target JVM 17+.

## TypeScript

- Use `npm` for dependency management.
- Target Node.js LTS.

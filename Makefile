.PHONY: check check-python check-node check-kotlin check-make help

## Default target: check all requirements
all: check

## Show available targets
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^## ' Makefile | sed 's/^## /  /'

## Check all basic requirements
check: check-make check-python check-node check-kotlin
	@echo "✅ All requirements satisfied."

## Check that make is available
check-make:
	@command -v make >/dev/null 2>&1 || { echo "❌ make is not installed."; exit 1; }
	@echo "✅ make: $$(make --version | head -1)"

## Check that Python 3 is available
check-python:
	@command -v python3 >/dev/null 2>&1 || { echo "❌ python3 is not installed. See https://www.python.org/downloads/"; exit 1; }
	@echo "✅ python3: $$(python3 --version)"

## Check that Node.js and npm are available
check-node:
	@command -v node >/dev/null 2>&1 || { echo "❌ node is not installed. See https://nodejs.org/"; exit 1; }
	@command -v npm >/dev/null 2>&1  || { echo "❌ npm is not installed. See https://nodejs.org/"; exit 1; }
	@echo "✅ node: $$(node --version)"
	@echo "✅ npm:  $$(npm --version)"

## Check that a JVM and Kotlin are available
check-kotlin:
	@command -v java >/dev/null 2>&1 || { echo "❌ java is not installed. See https://adoptium.net/"; exit 1; }
	@echo "✅ java: $$(java -version 2>&1 | head -1)"
	@command -v kotlinc >/dev/null 2>&1 || command -v kotlin >/dev/null 2>&1 || { echo "⚠️  kotlin compiler (kotlinc) not found — install via https://kotlinlang.org/docs/command-line.html or use the Gradle wrapper in kotlin/"; }

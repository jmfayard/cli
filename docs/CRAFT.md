# CRAFT


## Code Design & Structure

- **KISS (Keep It Simple, Stupid)**: Avoid over-engineering. The simplest solution that works and is easy to maintain is always the best choice.


- **YAGNI (You Ain't Gonna Need It)**: Don't add functionality or write code based on what you think you might need in the future. Implement it only when actually required.


- **Functional Programming (FP)**: A programming paradigm based on pure functions, avoiding changing-state and mutable data. It makes code highly predictable and easy to test.


- **Functional Core, Imperative Shell**: An architectural pattern where the business logic is written using pure, deterministic functional programming (the core), while side effects like I/O, databases, and network requests are pushed to the outside layer (the shell).


## Readability & Maintainability

- **Meaningful Naming**: Use descriptive, unambiguous names for variables, functions, and classes (e.g., user_registration_date instead of d).


- **Write Self-Documenting Code**: Prioritize writing clear, readable code over adding heavy comments. Use comments to explain **why** something is done, not **what** the code is doing.


- **Consistent Formatting**: Follow your language’s standard style guide (like PEP 8 for Python or Prettier for JavaScript) to keep indentation, spacing, and naming conventions uniform.


## Reliability & Security

- **Write Automated Tests**: Implement Unit tests (testing individual functions) and Integration tests to ensure code works as expected and to catch regressions early.


- **UNIT for Meaningful Unit Tests**: A mindset for writing high-quality tests: ensure they are United (test a single logical concept, not just a line of code), New/Independent (no shared state between tests), Immediate (fast execution), and Trustworthy (no flaky behavior).


- **Fail Fast & Handle Error**s: Validate inputs early and handle potential errors gracefully using try-catch blocks instead of letting the application crash unexpectedly.


- **Never Trust User Input**: Always sanitize, validate, and escape any data coming from the outside world to protect against vulnerabilities like SQL injection or XSS.


- **Don't Hardcode Secrets**: Keep API keys, passwords, and database credentials out of your source code. Use environment variables or a secrets manager.


## Workflow & Collaboration

- **Extreme Programming (XP)**: An agile software development framework that emphasizes high-quality code through technical excellence, featuring practices like continuous testing, simple design, and frequent releases.

- **Continuous Integration (CI)**: The practice of automating the integration of code changes from multiple contributors into a single software project frequently, running automated builds and test suites on every commit.

- **Trunk-Based Development**: A version control management practice where developers merge small, frequent updates into a single core branch (the "trunk"), avoiding long-lived feature branches and massive merge conflicts.

- **Pair Programming**: An XP practice where two developers work together at one workstation. One writes the code (the Driver) while the other reviews each line, plans ahead, and troubleshoots (the Navigator).

- **Early Feedback (30% vs. 90% PR)**: Open a Draft Pull Request early (at 30% completion) to align on architecture, direction, and design choices, rather than waiting until it is "done" (90%), where changing fundamental flaws becomes incredibly costly.

- **Code Reviews**: Have another pair of eyes look at your pull requests to catch bugs, ensure adherence to standards, and share knowledge across the team.

- **Refactor Regularly**: Clean up and improve the internal structure of your code without changing its external behavior to keep technical debt at bay.


## Guidelines

Those might be overkilled in this project, they usually involve a tradeoff, like they might add too much cognitive complexity 

- **DRY (Don't Repeat Yourself)**: Evaporate duplicate code by abstracting common logic into reusable functions, modules, or variables.
=> Trade off : premature abstraction is worse than code duplication


- SOLID Principles: Five design principles (Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion) aimed at making software designs more understandable, flexible, and maintainable.


- **Hexagonal Architecture (Ports and Adapters)**: A pattern that decouples the core application logic from external dependencies (databases, UIs, external APIs) using abstract interfaces ("ports") and concrete implementations ("adapters").


- **SoC (Separation of Concerns)**: Divide your program into distinct sections, where each section addresses a separate, specific responsibility (e.g., keeping UI logic separate from database logic).


- **Single Responsibility Principle**: A function or class should do one thing and do it well. If a function is doing multiple tasks, split it up.



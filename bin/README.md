# bin

This folder contains executable scripts (or symlinks to executables) that can be added to your `$PATH`.

## Setup

Add the `bin/` directory to your shell's `$PATH` so that all scripts here are available system-wide:

```bash
# Add to ~/.bashrc or ~/.zshrc
export PATH="$PATH:/path/to/cli/bin"
```

## Scripts

Scripts in this folder should be marked executable (`chmod +x <script>`) and ideally include a shebang line.

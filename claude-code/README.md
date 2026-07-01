# Containerized Claude Code

## Build

Build with:

```bash
podman build -f Dockerfile -t claudecode:latest .
```

## Alias

```bash
alias claude='podman run --userns=keep-id -v ~/.claude:/home/node/.claude:Z -v ~/.claude.json:/home/node/.claude.json:Z -v $(pwd):/workspace:Z -it localhost/claudecode:latest'
```

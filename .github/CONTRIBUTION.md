# Contribution

## Setup Development Environment
1. **Install essentials:**
- [Homebrew](https://brew.sh): Used for installing `act` (local GitHub Actions engine)
- [Docker](https://docs.docker.com/engine/install): Required by `act`
- [Python 3](https://www.python.org/downloads/) and [pip](https://www.python.org/downloads/): Used to install `cookiecutter`
- [Go](https://go.dev/doc/install): Used for developing Golang template.

2. **Clone the repository:**
```bash
git clone git@github.com:PashmakGuru/scaffolder.git
```

3. **Install prerequisites:**

Use the prepared Makefile to install `act` and `cookiecutter`:
```bash
make dev-prerequisites
```

## Test Templates

### Golang
For Golang template, use:
```bash
make golang-local-scaffold
```

It'll use default settings from the relevant `cookiecutter.json` to generate the output. You may want to interact with the output, for example:
```bash
cd [PATH_FROM_MAKE]
go run main.go
```

## Test Github Actions

### Golang
You can develope Github Actions (Workflows) locally - instead of pushing and changing the remote repository on every try.
Simply execute:
```bash
make act-golang-ci
```
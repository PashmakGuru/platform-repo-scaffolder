# Repository Scaffolder

## Golang Scaffolder
Test the tamplate using:
```bash
# Use cookiecutter to build Golang template
cookiecutter -o $(pwd)/.data/ $(pwd)/golang/
cd ./.data/NAME-OF-APP
go get
go run main.go
```

Resources:
- https://github.com/port-labs/cookiecutter-gha/

# Scaffolder

[![Golang Template Integration Tests](https://github.com/PashmakGuru/platform-repo-scaffolder/actions/workflows/golang-ci.yaml/badge.svg)](https://github.com/PashmakGuru/platform-repo-scaffolder/actions/workflows/golang-ci.yaml)
[![VueJS Template Integration Tests](https://github.com/PashmakGuru/platform-repo-scaffolder/actions/workflows/vuejs-ci.yaml/badge.svg)](https://github.com/PashmakGuru/platform-repo-scaffolder/actions/workflows/vuejs-ci.yaml)

This repository is dedicated to maintaining a collection of project templates in various programming languages and facilitates the creation of new repositories. It plays a crucial role in initial (day-0) repository setup operations.


## Key Functions
- Maintenance of project source-code templates
- Verification of functionality for source-code templates
- Verification of functionality for related template images
- Automating the setup of new repositories (day-0 operations)

## Tech Stack
- [GitHub Actions](https://github.com/features/actions) for workflow automation.
- [GNU `make`](https://www.gnu.org/software/make/manual/make.html) for development operations.
- [Docker](https://www.docker.com/) for containerization and testing images.
- [Container Structure Tests](https://github.com/GoogleContainerTools/container-structure-test) for validating container images metadata.
- [Cookiecutter](https://github.com/cookiecutter/cookiecutter) for project templating.
- [Golang](https://go.dev/) as a programming language.

## Development & Contribution
To set up your development environment and learn about contributing to this project, please refer to [CONTRIBUTION.md](./.github/CONTRIBUTION.md).

## Workflows
| Name | Description |
|---|---|
| [repository-scaffolder.yaml](.github/workflows/repository-delete.yaml) | Called by Port IDP, it scaffolds a repository from the templates available (Golang and VueJS) |
| [repository-delete.yaml](.github/workflows/repository-delete.yaml) | Called by Port IDP, it backups the repository content to the scaffolder articafts and deletes the repository afterward. |
| [golang-ci.yaml](.github/workflows/golang-ci.yaml) | Ensures the Golang template is generated properly by Cookiecutter, the binary is executable by default and serving a HTTP server, and the Docker image is good to go |
| [vuejs-ci.yaml](.github/workflows/vuejs-ci.yaml) | Ensures the VueJS template is generated properly by Cookiecutter, serves the specific content, and the Docker image is functional |

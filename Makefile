.PHONY: dev-prerequisites \
        dev-check-in \
        install-act \
        install-cookiecutter \
        act-golang-ci

dev-prerequisites: dev-check-in install-act install-cookiecutter

dev-check-in:
	@brew --version || { echo "📛 brew is not installed. See: https://brew.sh"; exit 1; }
	@docker --version || { echo "📛 docker is not installed. See: https://docs.docker.com/engine/install"; exit 1; }
	@python3 --version || { echo "📛 brew is not installed. See: https://www.python.org/downloads/"; exit 1; }
	@pip --version || { echo "📛 pip is not installed."; exit 1; }
	@go version || ( echo "📛 golang is not installed. See: https://go.dev/doc/install"; exit 1; )

install-act:
	brew install act

install-cookiecutter:
	python3 -m pip install --user cookiecutter

golang-local-scaffold:
	export OUT=$$(pwd)/.tmp/golang \
	&& export OUT_PROJECT=$$OUT/MyGolangApp \
	&& echo "$$OUT" \
	&& rm -rf "$$OUT" \
	&& cookiecutter --no-input -o $$OUT $$(pwd)/golang/ \
	&& cd $$OUT_PROJECT \
	&& go get \
	&& echo "" && echo "🌿 Output: $$OUT_PROJECT"

act-golang-ci:
	act -W .github/workflows/golang-ci.yaml --artifact-server-path /tmp/artifacts

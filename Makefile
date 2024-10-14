fmt:
	swift-format format -i -r -p Sources Package.swift

lint:
	swift-format lint -r Sources

.PHONY: fmt \
	lint

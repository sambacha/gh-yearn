define prepare_build_vars
	$(eval DATE_FLAG := -X 'main.date=$(shell date)')
    $(eval VERSION_FLAG=-X 'main.version=$(shell git name-rev --tags --name-only $(shell git rev-parse HEAD))')
    $(eval COMMIT_FLAG=-X 'main.commit=$(shell git rev-parse HEAD)')
endef

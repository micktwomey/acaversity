APP_NAME=acaversity
VERSION=$(CIRCLE_BRANCH)-$(CIRCLE_BUILD_NUM)
SLUG_TARBALL=$(APP_NAME)-$(VERSION).tar.gz

$(SLUG_TARBALL):
	mkdir -p slug/wheels
	python setup.py bdist_wheel
	cp dist/*.whl slug/wheels
	pip wheel -r requirements.txt --wheel-dir=slug/wheels

	tar -zcf $(SLUG_TARBALL) slug

slug: $(SLUG_TARBALL)

upload-slug: $(SLUG_TARBALL)
	aws s3 cp $(SLUG_TARBALL) s3://micktwomey-acaversity/slugs/$(SLUG_TARBALL)

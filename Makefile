# oat-carousel - Build System
# Requires: esbuild

.PHONY: dist css js clean size

CSS_FILES = src/css/carousel.css
JS_FILES = src/js/base.js src/js/carousel.js

dist: css js size

css:
	@mkdir -p dist
	@cat $(CSS_FILES) > dist/oat-carousel.css
	@esbuild dist/oat-carousel.css --minify --outfile=dist/oat-carousel.min.css
	@gzip -9 -k -f dist/oat-carousel.min.css
	@echo "CSS: $$(wc -c < dist/oat-carousel.min.css | tr -d ' ') bytes (minified)"

js:
	@mkdir -p dist
	@cat $(JS_FILES) > dist/oat-carousel.js
	@esbuild dist/oat-carousel.js --minify --outfile=dist/oat-carousel.min.js
	@gzip -9 -k -f dist/oat-carousel.min.js
	@echo "JS: $$(wc -c < dist/oat-carousel.min.js | tr -d ' ') bytes (minified)"

clean:
	@rm -rf dist

size:
	@echo ""
	@echo "Bundle:"
	@echo "CSS (src):   $$(wc -c < dist/oat-carousel.css | tr -d ' ') bytes"
	@echo "CSS (min):   $$(wc -c < dist/oat-carousel.min.css | tr -d ' ') bytes"
	@echo "CSS (gzip):  $$(wc -c < dist/oat-carousel.min.css.gz | tr -d ' ') bytes"
	@echo ""
	@echo "JS (src):    $$(wc -c < dist/oat-carousel.js | tr -d ' ') bytes"
	@echo "JS (min):    $$(wc -c < dist/oat-carousel.min.js | tr -d ' ') bytes"
	@echo "JS (gzip):   $$(wc -c < dist/oat-carousel.min.js.gz | tr -d ' ') bytes"

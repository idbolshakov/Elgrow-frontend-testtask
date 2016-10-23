PROJECT_NAME = elgrow_frontend_test_task

BLOCKS = src/blocks/project/container\
		 src/blocks/project/title\
		 src/blocks/project/image-of-the-day\
		 src/blocks/project/feed\
		 src/blocks/project/feed-content-date\
		 src/blocks/project/pagination\

CSS_BUNDLES := $(foreach block, $(BLOCKS), $(block)/build/bundles/bundle.css)

JS_BUNDLES  := $(foreach block, $(BLOCKS), $(block)/build/bundles/bundle.js)

STATIC      := $(foreach block, $(BLOCKS), $(block)/build/static/*)

TARGETS = clear_build_dir\
		  rebuild_all_blocks\
		  concat_bundle_css\
		  copy_html\
		  copy_static\
		  minify_css\

################################################################################

all: $(TARGETS)
	
	@echo PROJECT \<\<$(PROJECT_NAME)\>\> BUILD COMPLETED;

################################################################################

clear_build_dir:

	@rm -rf build/
	@mkdir -p build/bundles
	@mkdir -p build/static


rebuild_all_blocks:

	@for blockDir in $(BLOCKS); do\
	   	make -sC $${blockDir};\
	done

copy_html:

	@cp src/index_mobile.html build/index_mobile.html;


concat_bundle_css:

	@echo $(CSS_BUNDLES) | xargs cat > build/bundles/bundle.css 2>/dev/null || true;


concat_bundle_js:

	@echo $(JS_BUNDLES) | xargs cat > build/bundles/bundle.js 2>/dev/null || true;


copy_static:

	@cp -t build/static -r $(STATIC) 2>/dev/null || true; 

minify_js:

	@uglifyjs -d module=false build/bundles/bundle.js -c \
		> build/bundles/_bundle.js 2>/dev/null;
	@mv build/bundles/_bundle.js build/bundles/bundle.js;

	@for f in build/static/js/*.js; do\
		uglifyjs -d module=false $${f} -c > $${f}.temp;\
		mv $${f}.temp $${f};\
	done;


minify_css:

	@cleancss build/bundles/bundle.css > build/bundles/_bundle.css;
	@mv build/bundles/_bundle.css build/bundles/bundle.css;

minify_svg:

	@for f in build/static/svg/*.svg; do\
		svgo -q -i $${f};\
	done;


minify_png:

	@for f in build/static/png/*.png; do\
		optipng -quiet $${f};\
	done;


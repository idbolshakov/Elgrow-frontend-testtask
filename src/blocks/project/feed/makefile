###############################################################################
#                              BLOCK MAKEFILE                                  #
################################################################################

################################################################################
# VAR
################################################################################

PROJECT = elgrow_frontend_test_task 

BLOCK   = feed

CSS     = src/feed.css\
		  src/__chunk/feed__chunk.css\
		  src/__content/feed__content.css\
		  src/__ad/feed__ad.css\

JS      = 

SVG     = 

PNG     = src/__content/feed__content.png/1.png\
		  src/__content/feed__content.png/2.png\
		  src/__content/feed__content.png/3.png\
		  src/__content/feed__content.png/4.png\
		  src/__content/feed__content.png/5.png\
		  src/__content/feed__content.png/6.png\
		  src/__content/feed__content.png/7.png\
		  src/__content/feed__content.png/8.png\
		  src/__content/feed__content.png/9.png\
		  src/__content/feed__content.png/10.png\
		  src/__content/feed__content.png/11.png\
		  src/__content/feed__content.png/12.png\
		  src/__ad/feed__ad.png/mobile_ad.png\


JPG     =  

FONT    = 

NJK     = 

TARGETS = css_merge\
		  png_copy

################################################################################
# ALL
################################################################################

all: $(TARGETS)
	@echo $(PROJECT) :: $(BLOCK) block build completed

################################################################################
# TARGETS
################################################################################

delete_old_files:

	@rm -rf build/
	@rm -rf example/static/

css_merge: 

	@mkdir -p build/bundles

	@cat $(CSS) > build/bundles/bundle.css


js_merge: 

	@mkdir -p build/bundles

	@cat $(JS) > build/bundles/bundle.js


svg_copy:

	@mkdir -p build/static/svg

	@cp -t build/static/svg $(SVG)
	
	
png_copy:

	@mkdir -p build/static/png

	@cp -t build/static/png $(PNG)


jpg_copy:

	@mkdir -p build/static/jpg

	@cp -t build/static/jpg $(JPG)

font_copy:

	@mkdir -p build/static/font

	@cp -t build/static/font -r $(FONT)


njk_copy:

	@mkdir -p build

	@cp -t build $(NJK)



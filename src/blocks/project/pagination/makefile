###############################################################################
#                              BLOCK MAKEFILE                                  #
################################################################################

################################################################################
# VAR
################################################################################

PROJECT = elgrow_frontend_test_task 

BLOCK   = pagination

CSS     = src/pagination.css\
		  src/__title/pagination__title.css\
		  src/__page/pagination__page.css\
		  src/__page/_current/pagination__page_current.css\
		  src/__next/pagination__next.css\

JS      = 

SVG     = 

PNG     =  

JPG     =  

FONT    = 

NJK     = 

TARGETS = css_merge\

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



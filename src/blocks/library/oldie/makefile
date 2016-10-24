###############################################################################
#                              BLOCK MAKEFILE                                  #
################################################################################

################################################################################
# VAR
################################################################################

PROJECT = oldie 

BLOCK   = oldie

CSS     = src/oldie.css\
		  src/--warning/oldie--warning.css\
		  src/--about/oldie--about.css\
		  src/--recommend/oldie--recommend.css\
		  src/--browserTable/oldie--browserTable.css\
		  src/--browserIcon/oldie--browserIcon.css

JS      = src/oldie.js

SVG     = 

PNG     = src/--warning/oldie--warning.png\
		  src/--browserIcon/oldie--browserIcon-Firefox.png\
		  src/--browserIcon/oldie--browserIcon-Chrome.png\
		  src/--browserIcon/oldie--browserIcon-Opera.png

JPG     =  

FONT    =

NJK     = 
 

TARGETS = delete_old_files\
		  css_merge\
		  js_merge\
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
	@rm -rf example/bundles/

css_merge: 

	@mkdir -p build/static/css

	@cat $(CSS) > build/static/css/oldie.css


js_merge: 

	@mkdir -p build/static/js

	@cat $(JS) > build/static/js/oldie.js


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


example_update: 

	@mkdir -p example/bundles
	@mkdir -p example/static

	@cp -r build/bundles example/ 2>/dev/null || :
	@cp -r build/static  example/ 2>/dev/null || :




build/index.html: src/*.xml html.xsl Makefile css/*
	#xsltproc --xinclude --stringparam html.stylesheet "../css/pico.css ../css/pico.css ../css/styled.min.css " --path "src css" --output build/ html.xsl cg.xml
	xsltproc --xinclude --stringparam html.stylesheet "../css/bootstrap.min.css ../css/bootstrap-responsive.min.css ../css/styled.min.css " --path "src css" --output build/ html.xsl cg.xml
	#xsltproc --xinclude --stringparam html.stylesheet "https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css ../css/styled.min.css " --path "src css" --output build/ html.xsl cg.xml
	#xsltproc --xinclude --stringparam html.stylesheet "../css/one.min.css" --path "src css" --output build/ html.xsl cg.xml
#	perl -pi -e "s/\.pdf\"/\.png\"/g;" src/*.xml
	find . -name "*.html" | xargs perl -pi -e "s/<html>/<!DOCTYPE html>/g;"
	#find . -name "*.html" | xargs perl -pi -e "s/<meta/<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta/g;"
	cp -r images build/
	./domp.py
	cp -r build/* /usr/share/nginx/html/coordinate-geometry/


pdf/cg.pdf: src/*.xml dblatex.xsl Makefile images/*
	rm -rf pdf
	cp -r src pdf
	perl -pi -e "s/\.webp\"/\.pdf\"/g;" pdf/*.xml
	dblatex -bxetex -T db2latex -p dblatex.xsl -P preface.tocdepth="1" pdf/cg.xml


latex:
	dblatex -bxetex -T db2latex -p dblatex.xsl -P preface.tocdepth="1" -t tex src/cg.xml
	cd src && perl -pi -e "s/\.png/\.pdf/g;" cg.tex

fop:
#	cd src && xmllint --xinclude c.xml>resolvedc.xml
	xsltproc --xinclude --output src/cg.fo fop.xsl src/cg.xml
	perl -pi -e "s/png/pdf/g;" src/cg.fo
#	./fop.py
#	perl -pi -e "s/<html><body>//g;" src/c.fo
#	perl -pi -e "s/<\/body><\/html>//g;" src/c.fo
	cd src && fop c.fo c.pdf

epub: src/*.xml epub.xsl Makefile
	xsltproc --xinclude --stringparam html.stylesheet "../css/bootstrap.min.css ../css/bootstrap-responsive.min.css ../css/styled.min.css" --path "src css" epub.xsl cg.xml
	cp -r images OEBPS
	./epub.py
	zip -r cg.epub mimetype css META-INF/ OEBPS/

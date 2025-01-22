all:	cs1390-plan.pdf cs1390-plan.html

cs1390-plan.pdf: 	cs1390.md Makefile
	pandoc cs1390.md \
        -V colorlinks=true \
        -V linkcolor=blue \
        -V urlcolor=blue \
        -V toccolor=gray \
        -o cs1390-plan.pdf

cs1390-plan.html: 	cs1390.md styles.css date.js Makefile
	pandoc \
        --css styles.css \
        --to=html5 \
        -s -f markdown+smart \
        cs1390.md \
        -o cs1390-plan.html

clean:
	rm cs1390-plan.pdf cs1390-plan.html

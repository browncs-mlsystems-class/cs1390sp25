all:	cs1390-plan.pdf cs1390-plan.html hw1.pdf hw1.html

hw1.pdf:	hw1.md Makefile
	pandoc hw1.md \
        -V colorlinks=true \
        -V linkcolor=blue \
        -V urlcolor=blue \
        -V toccolor=gray \
        -o hw1.pdf

hw1.html: 	hw1.md styles.css date.js Makefile
	pandoc \
        --css styles.css \
        --to=html5 \
        -s -f markdown+smart \
        hw1.md \
        -o hw1.html

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

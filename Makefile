all: clean build clip

SOLARIZED_DARK=solarized-dark.sass
SOLARIZED_LIGHT=solarized-light.sass
OUTPUT_DARK_CSS=solarized-dark.css
OUTPUT_LIGHT_CSS=solarized-light.css

build:
	sass ${SOLARIZED_DARK} ${OUTPUT_DARK_CSS}
	sass ${SOLARIZED_LIGHT} ${OUTPUT_LIGHT_CSS}

clean:
	-@rm -f ${OUTPUT_DARK_CSS}
	-@rm -f ${OUTPUT_DARK_CSS}.map
	-@rm -f ${OUTPUT_LIGHT_CSS}
	-@rm -f ${OUTPUT_LIGHT_CSS}.map

clip:
	-@cat ${OUTPUT_DARK_CSS}|xclip -i  -selection clipboard

test:
	sass -c ${SOLARIZED_DARK}
	sass -c ${SOLARIZED_LIGHT}

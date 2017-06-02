main: styles
	elm-make --yes Main.elm --output elm.js
styles:
	elm-css css/Stylesheets.elm
clean:
	rm -rf elm-stuff/ elm.js styles.css
all: clean main
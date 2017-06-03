# elm-css-example

How to set up an example project with [`elm-css`](https://github.com/rtfeldman/elm-css) to

1. Build a `.css` file that you can use with your Elm app
2. Use the class and id selector union types in the view code of your main Elm app for extra type-safety

## How to build

1. Prereqs

        npm install -g yarn
        yarn

1. Build (and start our dev server)

        yarn start

3. Open `localhost:3000` in a web browser

## Remarks

It turns out that, as the [README](https://github.com/rtfeldman/elm-css/blob/master/README.md) of the [`elm-css`](https://github.com/rtfeldman/elm-css) repo suggests, it is much simpler to set it up for inline styling; however, sometimes, you want it to build a `.css` file to work with your app. This repo takes the suggestions in that [README](https://github.com/rtfeldman/elm-css/blob/master/README.md) and fleshes it out to a minimal working example.

I've used a `Makefile` here to keep the build specification a minimal number of lines as possible, but you are more than welcome to to use a more robust JavaScript buildtool of your preference.

Feel free to leave comments and suggestions.

Enjoy!
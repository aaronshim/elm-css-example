var HtmlWebpackPlugin = require('html-webpack-plugin');
var path = require('path');

module.exports = {
    entry: './index.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'app.js'
    },

    // Replace our index.html
    plugins: [ new HtmlWebpackPlugin({
        title: 'Elm Css Example'
    }) ],

    module: {
        rules: [
            {
                // All our Elm code, particularly Main.elm
                test: /\.elm$/,
                exclude: [/elm_stuff/, /node_modules/, /css\/.+\.elm$/],
                use: [
                        {
                            loader: 'uglify-loader',
                            options: {}
                        },
                        {
                            loader: 'elm-webpack-loader',
                            options: {}
                        },
                ]
            },
            {
                // Special rule for compiling our elm-css and then passing it to the css-loader!style-loader
                test: /css\/Stylesheets\.elm$/,
                use: [
                    'style-loader',
                    { loader:'css-loader', options: { minimize: true } },
                    'elm-css-webpack-loader',
                ]
            }
        ]
    },

    // Inline mode
    devServer: {
        contentBase: path.join(__dirname, 'dist'),
        inline: true,
        compress: true
    }
}
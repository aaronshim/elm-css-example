/* WEBPACK ENTRYPOINT 
   (All our Elm code, CSS, etc. get aggregated here.)
*/
require('./css/Stylesheets.elm');

var Elm = require('./Main.elm');
var app = Elm.Main.fullscreen();
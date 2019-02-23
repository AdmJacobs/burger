var express = require("express");
var methodOverride = require("method-override");
var bodyParser = require("body-parser");
var exphbs = require("express-handlebars");
var routes = require("./controllers/burgers_controller.js");
var path = require("path");

// Sets up the Express App
var app = express();
const port = process.env.PORT || 3000;

//middleware
app.use(express.static(path.join(__dirname, '/public')))

app.use(bodyParser.urlencoded({ extended: true }));

app.use(methodOverride("_method"));

//handlebars middleware

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

//routing
app.use('/', routes);

//port listener
app.listen(process.env.PORT || 3000, function () {
    console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
  });
const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const logger = require("morgan");
const cors = require("cors");
const multer = require("multer");
const admin = require("firebase-admin");
const serviceAccountKey = require("./serviceAccountKey.json");
const session = require("express-session");
const passport = require("passport");
/*
 * INICIALIZAR FIREBASE ADMIN
 */
admin.initializeApp({
  credential: admin.credential.cert(serviceAccountKey),
});
const upload = multer({
  storage: multer.memoryStorage(),
});
/* RUTAS */
const users = require("./routes/userRoutes");
const categories = require("./routes/categoryRoutes");
const produt = require("./routes/productRoutes");
const { multiResult } = require("./config/config");
const Product = require("./models/product");
const port = process.env.PORT || 3000;

app.use(logger("dev"));
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);
app.use(cors());

app.use(passport.initialize());
app.use(
  session({
    secret: "keyboard cat",

    resave: false,

    saveUninitialized: true,
  })
);
app.use(session());
app.use(passport.session());
require("./config/passport")(passport);

app.disable("x-powered-by");
app.set("port", port);

/* Llamando a las rutas */
users(app, upload);
categories(app, upload);
produt(app, upload);

server.listen(3000, "192.168.1.105" || "localhost", function () {
  console.log("Aplicacion de NodeJS " + process.pid + " iniciando...");
});

app.get("/", (req, res) => {
  res.send("Ruta raiz del backend");
});
app.get("/test", (req, res) => {
  res.send("esta es la ruta test");
});

app.use((err, req, res, next) => {
  console.log(err);
  res.status(err.status || 500).send(err.stack);
});

module.exports = {
  app: app,
  server: server,
};

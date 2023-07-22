const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const logger = require("morgan");
const cors = require("cors");
const multer = require("multer");
const admin = require("firebase-admin");
const serviceAccountKey = require("./serviceAccountKey.json");
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
const { multiResult } = require("./config/config");

const port = process.env.PORT || 3000;

app.use(logger("dev"));
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);
app.use(cors());
app.disable("x-powered-by");
app.set("port", port);

/* Llamando a las rutas */
users(app, upload);

server.listen(3000, "192.168.0.107" || "localhost", function () {
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

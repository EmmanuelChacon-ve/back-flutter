const UsersController = require("../controllers/usersController");
const paymentController = require("../controllers/paymentController");
module.exports = (app, upload) => {
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);
  app.get("/api/users/payment", paymentController.getAllSelector)
  //Crear o Guardar Datos
  app.post(
    "/api/users/create",
    upload.array("image", 1),
    UsersController.registerWithImage
  ); // cada vez que hagamos un post hay una insertion de datos
  app.post("/api/users/login", UsersController.login);
};

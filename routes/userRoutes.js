const UsersController = require("../controllers/usersController");
const paymentController = require("../controllers/paymentController");
const usersController = require("../controllers/usersController");
module.exports = (app, upload) => {
  //GET
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);
  app.get("/api/users/payment", paymentController.getAllSelector)
  app.get("/api/users/pay", paymentController.getAllPay)
  app.get("/api/users/findById/:id", UsersController.findById); //los dos : indica que es ues un parametro
  //Crear o Guardar Datos
  //POST
  app.post(
    "/api/users/create",
    upload.array("image", 1),
    UsersController.registerWithImage
  ); // cada vez que hagamos un post hay una insertion de datos
  app.post("/api/users/login", UsersController.login);
  //AGREGANDO LOGICA INSERT PAGO
  app.post("/api/users/insertPayment",upload.array("image",1),paymentController.insertarPago)
  //
  //PUT
  //Actualizar datos en editar perfil
  app.put("/api/users/update",  upload.array("image", 1),
    UsersController.update)

  //DELETE
};

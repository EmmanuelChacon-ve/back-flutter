const UsersController = require("../controllers/usersController");

module.exports = (app, upload) => {
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);
  app.get("/api/users/findById/:id", UsersController.findById); //los dos : indica que es ues un parametro
  //Crear o Guardar Datos
  app.post(
    "/api/users/create",
    upload.array("image", 1),
    UsersController.registerWithImage
  ); // cada vez que hagamos un post hay una insertion de datos
  app.post("/api/users/login", UsersController.login);

  //Actualizar datos
  app.put("/api/users/update",  upload.array("image", 1),
    UsersController.update)
};

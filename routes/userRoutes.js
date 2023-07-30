const UsersController = require("../controllers/usersController");
const passport = require("passport");
const adminController = require("../controllers/adminController");

module.exports = (app, upload) => {
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);
  app.get(
    "/api/users/findById/:id",
    passport.authenticate("jwt", { session: false }),
    UsersController.findById
  );
  app.get("/api/admin/getAllUsers", adminController.getAll); //PARA MOSTRAR EN EL SELECT
  app.get("/api/admin/getRol", adminController.getRol); //PARA MOSTRAR EN EL SELECT

  //los dos : indica que es ues un parametro
  //Crear o Guardar Datos
  app.post(
    "/api/users/create",
    upload.array("image", 1),
    UsersController.registerWithImage
  ); // cada vez que hagamos un post hay una insertion de datos
  app.post("/api/users/login", UsersController.login);
  app.post("/api/users/logout", UsersController.logout);
  app.post("/api/admin/insertRol", adminController.insertRol);
  //Actualizar datos en editar perfil
  app.put(
    "/api/users/update",
    passport.authenticate("jwt", { session: false }),
    upload.array("image", 1),
    UsersController.update
  );
};

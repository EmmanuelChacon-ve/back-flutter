const UsersController = require("../controllers/usersController");
const passport = require("passport");

module.exports = (app, upload) => {
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);
  app.get("/api/users/getAllrol", UsersController.getAllrol);
  app.get(
    "/api/users/getAlluser_has_roles",
    UsersController.getAlluser_has_roles
  );
  app.get("/api/users/findAllp", UsersController.findAllp);
  app.get("/api/users/getAllCategoria", UsersController.getAllCategoria);
  app.get(
    "/api/users/findById/:id",
    passport.authenticate("jwt", { session: false }),
    UsersController.findById
  );
  //los dos : indica que es ues un parametro
  //Crear o Guardar Datos
  app.post(
    "/api/users/create",
    upload.array("image", 1),
    UsersController.registerWithImage
  ); // cada vez que hagamos un post hay una insertion de datos
  app.post("/api/users/login", UsersController.login);
  app.post("/api/users/logout", UsersController.logout);
  //Actualizar datos en editar perfil
  app.put(
    "/api/users/update",
    passport.authenticate("jwt", { session: false }),
    upload.array("image", 1),
    UsersController.update
  );
};

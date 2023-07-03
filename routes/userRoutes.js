const usersController = require("../controllers/usersController");
const UsersController = require("../controllers/usersController");

module.exports = (app, upload) => {
  // TRAER DATOS
  app.get("/api/users/getAll", UsersController.getAll);

  //Crear o Guardar Datos
  app.post("/api/users/create", usersController.register); // cada vez que hagamos un post hay una insertion de datos
};

const User = require("../models/user");
module.exports = {
  async getAll(req, res, next) {
    try {
      const data = await User.getAll(); // el await espera a que se ejecute la consulta para seguir con el codigo
      console.log(`Usuarios: ${data}`);
      return res.status(201).json(data);
    } catch (error) {
      console.log(`Error: ${error}`);
      return res.status(501).json({
        // el res se utiliza para retornar una respuesta al cliente, api , aplicacion etc etc
        success: false,
        message: "Error al obtener los usuarios",
      });
    }
  },
  async register(req, res, next) {
    try {
      const user = req.body; // para capturar lo que el cliente nos envia como parametros
      const data = await User.create(user);
      return res.status(201).json({
        success: true,
        message: "El registro se realizo correctamente, ahora inicia sesion",
        data: data.id,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
      return res.status(501).json({
        success: false,
        message: "Hubo un error con el registro del usuario",
        error: error,
      });
    }
  },
};

const admin = require("../models/admin");
const rol = require("../models/rol");

module.exports = {
  async getAll(req, res, next) {
    try {
      const data = await admin.getAll(); // el await espera a que se ejecute la consulta para seguir con el codigo
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
  async getRol(req, res, next) {
    try {
      const data = await rol.getRol();
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
  async insertRol(req, res, next) {
    try {
      const rol = req.body; // el await espera a que se ejecute la consulta para seguir con el codigo
      console.log(Object.keys(rol));
      const data = await admin.insertRol(rol);

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
};

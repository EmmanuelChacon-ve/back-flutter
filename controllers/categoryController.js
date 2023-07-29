const Category = require("../models/category");

module.exports = {
  async getAll(req, res, next) {
    try {
      const data = await Category.getAll();
      console.log(`Categorias ${JSON.stringify(data)}`);
      return res.status(201).json(data);
    } catch (error) {
      console.log(`Error ${error}`);
      return res.status(501).json({
        message: "Hubo un error al tratar de obtener las categorias",
        error: error,
        success: false,
      });
    }
  },

  async create(req, res, next) {
    try {
      const category = req.body;
      console.log(`Categoria enviada: ${category}`);

      const userId = req.user.id; // Obtenemos el ID del usuario del objeto req.user

      const data = await Category.create(category, userId); // Pasamos el ID del usuario como segundo parámetro

      return res.status(201).json({
        message: "La categoria se creó correctamente",
        success: true,
        data: data.id,
      });
    } catch (error) {
      console.log(`Error: ${error}`);
      return res.status(501).json({
        message: "Hubo un error al crear la categoria",
        success: false,
        error: error,
      });
    }
  },
};

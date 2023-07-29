const Payment = require('../models/payment');
const storage = require("../utils/cloud_storage");
//agregar validacion de usuario logueado con Emmanuel

module.exports = 
{
 async getAllSelector(req,res,next)
 {
    try
    {
        //obteniendo informacion de los selectores
        const data = await Payment.getAll();
        console.log('Informacion de pagos');
        return res.status(201).json(data);
    }catch(error)
    {
        console.log(`Error en el metodos de pago: ${error}`);
        return res.status(501).json(
            {
                success: false,
                message: "Error al obtener los pagos",
            })
    }
 },
 async getAllPay(req,res,next)
 {
    try
    {
        //obteniendo informacion de los selectores
        const data = await Payment.getAllPay();
        console.log('Informacion de pagos pay');
        return res.status(201).json(data);
    }catch(error)
    {
        console.log(`Error en el metodos de pago: ${error}`);
        return res.status(501).json(
            {
                success: false,
                message: "Error al obtener los pagos",
            })
    }
 },
 async insertarPago(req, res, next) {
    try {
      const pago = JSON.parse(req.body.pago);
      //capturando imagen
      const files = req.files;
      if (files.length > 0) {
        const pathImage = `image_${Date.now()}`; //mombre de archivo a almacenar
        const url = await storage(files[0], pathImage);
        pago.img = url;
      }
      const data = await Payment.insert(pago);
      return res.status(201).json({
        success: true,
        message: "El pago se realizo correctamente",
      });
    } catch (error) {
      console.log(`Error: ${error}`);
      return res.status(501).json({
        success: false,
        message: "Hubo un error con el registro del pago",
        error: error,
      });
    }
  }

}
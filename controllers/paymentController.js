const Payment = require('../models/payment');
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
 }
}
const paymentController = require("../controllers/paymentController");

module.exports = (app, upload) => {
    // TRAER DATOS
    app.get("pago", (req, res) => {
      res.send("Hola mundo");
    });
  };
  

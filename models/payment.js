const db = require('../config/config');

const Payment = {};

Payment.getAll = () => {
    // un metodo
    const sql = `
    SELECT id_payment_type, selector_id_payment_type
    FROM payment_method.payment_type
    ORDER BY id_payment_type ASC;    
`;

  
    return db.manyOrNone(sql);
  };


module.exports = Payment;
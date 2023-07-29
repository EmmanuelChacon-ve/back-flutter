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

Payment.getAllPay = () => {
    // un metodo
    const sql = `
    SELECT id_payment_method, amount, name_cause, date, img, description, id_user
	  FROM payment_method.pay;    
`;

  
    return db.manyOrNone(sql);
  };
  //arreglar insert
  Payment.insert = (pago) => {
    const sql = `
      INSERT INTO payment_method.pay (
        id_payment_method, 
        amount, 
        name_cause, 
        date, 
        img, 
        description, 
        id_user, 
        created_at, 
        updated_at
      )
      VALUES (
        $1, $2, $3, $4, $5, $6, $7, NOW(), NOW()
      ) RETURNING id
    `;
  
    const values = [
      pago.id_payment_method,
      pago.amount,
      pago.name_cause,
      new Date(pago.date),
      pago.img,
      pago.description,
      pago.id_user
    ];
  
    return db.one(sql, values);
  }
  


module.exports = Payment;
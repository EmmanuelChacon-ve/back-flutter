const db = require("../config/config");

const Product = {};

Product.findAll = () => {
  // un metodo
  const sql = `
      SELECT 
          *
      FROM
      products
      ORDER BY
      name
      `;

  return db.manyOrNone(sql); // retorname en esta consulta muchos o ningun usuario
};

Product.findByCategory = (id_category) => {
  const sql = `
    SELECT
        P.id,
        P.name,
        P.description,
        P.image1,
        P.image2,
        P.image3,
        P.id_category
    FROM
        products AS P
    INNER JOIN
        categories AS C
    ON
        P.id_category = C.id
    WHERE
        C.id = $1
    `;

  return db.manyOrNone(sql, id_category);
};

Product.findByCategoryAndProductName = (id_category, product_name) => {
  const sql = `
    SELECT
        P.id,
        P.name,
        P.description,
        P.price,
        P.image1,
        P.image2,
        P.image3,
        P.id_category
    FROM
        products AS P
    INNER JOIN
        categories AS C
    ON
        P.id_category = C.id
    WHERE
        C.id = $1 AND p.name ILIKE $2
    `;

  return db.manyOrNone(sql, [id_category, `%${product_name}%`]);
};

/* Product.create = (product) => {
  const sql = `
    INSERT INTO
        products(
            name,
            description,
            price,
            image1,
            image2,
            image3,
            id_category,
            created_at,
            updated_at
        )
    VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id
    `;
  return db.oneOrNone(sql, [
    product.name,
    product.description,
    product.price,
    product.image1,
    product.image2,
    product.image3,
    product.id_category,
    new Date(),
    new Date(),
  ]);
};
 */
/* Product.update = (product) => {
  const sql = `
    UPDATE
        products
    SET
        name = $2,
        description = $3,
        price = $4,
        image1 = $5,
        image2 = $6,
        image3 = $7,
        id_category = $8,
        updated_at = $9
    WHERE
        id = $1
    `;
  return db.none(sql, [
    product.id,
    product.name,
    product.description,
    product.price,
    product.image1,
    product.image2,
    product.image3,
    product.id_category,

    new Date(),
  ]);
}; */

Product.create = (product, userId) => {
  const sql = `
      INSERT INTO
          products(
              id_user,
              name,
              description,
              image1,
              image2,
              image3,
              id_category,
              created_at,
              updated_at
          )
      VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id
      `;
  return db.oneOrNone(sql, [
    userId, // Aquí proporciona el id del usuario que hizo el registro
    product.name,
    product.description,
    product.image1,
    product.image2,
    product.image3,
    product.id_category,
    new Date(),
    new Date(),
  ]);
};

Product.update = (product, userId) => {
  const sql = `
      UPDATE
          products
      SET
          id_user = $2,
          name = $3,
          description = $4,
          image1 = $5,
          image2 = $6,
          image3 = $7,
          id_category = $8,
          updated_at = $9
      WHERE
          id = $1
      `;
  return db.none(sql, [
    product.id,
    userId, // Aquí proporciona el id del usuario que está realizando la actualización
    product.name,
    product.description,
    product.image1,
    product.image2,
    product.image3,
    product.id_category,
    new Date(),
  ]);
};

module.exports = Product;

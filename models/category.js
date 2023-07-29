const db = require("../config/config");

const Category = {};

Category.getAll = () => {
  const sql = `
        SELECT
            id,
            name,
            description
        FROM
            categories
        ORDER BY
            name
    `;

  return db.manyOrNone(sql);
};
Category.create = (category, userId) => {
  const sql = `
    INSERT INTO
        categories(
            user_id,
            name,
            description,
            created_at,
            updated_at
        )
    VALUES ($1, $2, $3, $4, $5) RETURNING id
    `;
  return db.oneOrNone(sql, [
    userId, // Insertamos el ID del usuario en la columna user_id
    category.name,
    category.description,
    new Date(),
    new Date(),
  ]);
};
module.exports = Category;

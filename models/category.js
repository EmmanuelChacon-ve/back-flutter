const db = require("../config/config");

const Category = {};

Category.getAll = () => {
  const sql = `
        SELECT
            id,
            name,
            description
        FROM
            causes.categories
        ORDER BY
            id
    `;

  return db.manyOrNone(sql);
};
Category.create = (category, userId) => {
  const sql = `
    INSERT INTO
        causes.categories(
            id_user,
            name,
            description,
            created_at,
            updated_at,
            status
        )
    VALUES ($1, $2, $3, $4, $5,$6) RETURNING id
    `;
  return db.oneOrNone(sql, [
    userId, // Insertamos el ID del usuario en la columna user_id
    category.name,
    category.description,
    new Date(),
    new Date(),
    true,
  ]);
};
module.exports = Category;

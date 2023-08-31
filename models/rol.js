const db = require("../config/config");

const Rol = {};

Rol.create = (id_user, id_rol) => {
  const sql = `
    INSERT INTO
        users.user_has_roles(
            id_user,
            id_rol,
            created_at,
            updated_at,
            status
        )
    VALUES($1, $2, $3, $4, $5)
    `;

  return db.none(sql, [id_user, id_rol, new Date(), new Date(), true]);
};

Rol.getAllrol = () => {
  // un metodo
  const sql = `
      SELECT 
          *
      FROM
      users.roles
      `;

  return db.manyOrNone(sql); // retorname en esta consulta muchos o ningun usuario
};

Rol.getAlluser_has_roles = () => {
  // un metodo
  const sql = `
      SELECT 
          *
      FROM
      users.user_has_roles
      `;

  return db.manyOrNone(sql); // retorname en esta consulta muchos o ningun usuario
};

Rol.findAllp = () => {
  // un metodo
  const sql = `
      SELECT 
          id,
          name,
          description,
          id_category
      FROM
      causes.causes
      `;

  return db.manyOrNone(sql); // retorname en esta consulta muchos o ningun usuario
};

Rol.getAllCategoria = () => {
  // un metodo
  const sql = `
      SELECT 
          id,
          name,
          description
      FROM
      causes.categories
      `;

  return db.manyOrNone(sql); // retorname en esta consulta muchos o ningun usuario
};

module.exports = Rol;

const db = require("../config/config");
const Admin = {};

Admin.getAll = () => {
  const sql = `SELECT id,email FROM users`;
  return db.manyOrNone(sql);
};

Admin.insertRol = (informacion) => {
  const user = informacion.id_user;
  const rol = informacion.id_rol;
  const sql = `INSERT INTO public.user_has_roles(id_user, id_rol, created_at, updated_at)
    VALUES ('${user}',
           '${rol}',
           NOW(),
           NOW());`;

  // Retorna una promesa que maneja la ejecución de la consulta
  return db
    .none(sql)
    .then(() => {
      // Si la inserción fue exitosa, enviamos un mensaje de éxito al cliente
      return { message: "Inserción exitosa.", success: true };
    })
    .catch((error) => {
      // Si ocurrió un error, enviamos una respuesta con el mensaje de error al cliente
      if (error.code === "23505") {
        return { message: "Rol ya asignado al usuario", success: false };
      } else {
        throw new Error("Error desconocido.");
      }
    });
};

module.exports = Admin;

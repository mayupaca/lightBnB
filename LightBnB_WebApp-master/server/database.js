const { Pool } = require("pg");

const pool = new Pool({
  user: "labber",
  password: "123",
  host: "localhost",
  database: "lightbnb",
});

const properties = require("./json/properties.json");
const users = require("./json/users.json");

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */

const getUserWithEmail = function (email) {
 return pool
   .query(
     `
    SELECT *
    FROM users
    WHERE email = $1`,
     [email]
   )
   .then((res) => {
     const users = res.rows;
     if (users.length === 0) {
       return null;
     } else {
       return res.rows[0];
     }
   });
};
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function (id) {
  return pool
    .query(`
      SELECT *
      FROM users
      WHERE id = $1`, [id]
    )
    .then((res) => {
      const users = res.rows;
      if (users.length === 0) {
        return null;
      } else {
        return res.rows[0];
      }
    });
};
exports.getUserWithId = getUserWithId;


// // const getUserWithId = function (id) {
// //   return Promise.resolve(users[id]);
// // };
// // exports.getUserWithId = getUserWithId;

/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */

const addUser = function (user) {
  return pool
    .query(`
      INSERT INTO users (name, email, password)
      VALUES($1, $2, $3)
      RETURNING *;`,
      [user.name, user.email, user.password]
    )
    .then((res) => {
      return res.rows[0];
    });
};
exports.addUser = addUser;

// // const addUser = function (user) {
// //   const userId = Object.keys(users).length + 1;
// //   user.id = userId;
// //   users[userId] = user;
// //   return Promise.resolve(user);
// // };
// // exports.addUser = addUser;


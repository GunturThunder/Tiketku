const connection = require("../Configs/mysql");

module.exports = {
  createBooking: (data) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "INSERT INTO tb_booking SET ?",
        data,
        (error, result) => {
          if (error) reject(new Error(error));
          resolve(result);
        }
      );
    });
  },
  getBooked: (id) => {
    return new Promise((resolve, reject) => {
      connection.query(
        "SELECT * FROM tb_booking WHERE id_user = ?",
        id,
        (error, result) => {
          if (error) reject(new Error(error));
          resolve(result);
        }
      );
    });
  },
};

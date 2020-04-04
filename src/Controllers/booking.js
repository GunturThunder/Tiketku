const bookingModel = require("../Models/booking");
const helper = require("../Helpers/index");

module.exports = {
  createBooking: async (req, res) => {
    try {
      const {
        hotel,
        address,
        cover,
        visitor,
        room,
        night,
        checkIn,
        order_id,
        id_user,
      } = req.body;
      const data = {
        hotel,
        address,
        cover,
        visitor,
        room,
        night,
        checkIn,
        order_id,
        id_user,
      };
      await bookingModel.createBooking(data);
      helper.response(res, 200, "added successfully");
    } catch (error) {
      console.log(error);
      helper.customErrorResponse(res, 500, "Failed");
    }
  },
  getBooked: async (req, res) => {
    try {
      const id = req.params.idUser;
      const result = await bookingModel.getBooked(id);
      helper.response(res, 200, result);
    } catch (error) {
      console.log(error);
      helper.customErrorResponse(res, 500, "Failed");
    }
  },
};

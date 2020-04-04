const express = require("express");
const Route = express.Router();

const hotelRouter = require("./hotel");
const hotelimgRouter = require("./hotel_image");
const bookingRouter = require("./booking");
const userRouter = require("./user");
const hotelCity = require("./hotelCity");

Route.use("/user", userRouter)
  .use("/hotel", hotelRouter)
  .use("/hotelimg", hotelimgRouter)
  .use("/booking", bookingRouter)
  .use("/images/", express.static("./src/Images"))
  .use("/city", hotelCity);

module.exports = Route;

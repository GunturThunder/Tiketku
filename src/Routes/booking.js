const express = require("express");
const Route = express.Router();

const { createBooking, getBooked } = require("../Controllers/booking");

Route.post("/", createBooking).get("/:idUser", getBooked);

module.exports = Route;

// server.js

const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
n
const app = express();
const port = 3000; // Use any port you prefer

// Connect to MongoDB using Mongoose
mongoose.connect('mongodb://localhost:27017/hotelDB', { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => {
    console.log('MongoDB connected successfully');
  })
  .catch((error) => {
    console.error('MongoDB connection failed:', error);
  });

// Create a Mongoose model for Restaurant Booking
const RestaurantBooking = mongoose.model('RestaurantBooking', {
  name: String,
  email: String,
  phone: String,
  date: Date,
  time: String,
  guests: Number,
  specialRequests: String,
});

// Middleware to parse JSON and handle form submissions
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Serve static files (HTML, CSS, images, etc.)
app.use(express.static('public'));

// Handle form submissions
app.post('/submit-restaurant-booking', async (req, res) => {
  try {
    // Create a new RestaurantBooking instance
    const newBooking = new RestaurantBooking(req.body);

    // Save the booking to MongoDB
    await newBooking.save();

    // Send a response
    res.status(200).send('Booking submitted successfully!');
  } catch (error) {
    console.error('Error submitting booking:', error);
    res.status(500).send('Internal Server Error');
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const express = require('express');
const mongoose = require('mongoose');
const app = express();
const port = 3000; // You can choose any port

// Connect to MongoDB (make sure MongoDB is running)
mongoose.connect('mongodb://localhost:27017/hotelDB', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

// Define a basic schema
const hotelSchema = new mongoose.Schema({
  name: String,
  location: String,
  // Add more fields as needed
});

// Create a model
const Hotel = mongoose.model('Hotel', hotelSchema);

// Middleware to parse JSON requests
app.use(express.json());

// Routes

// Example: Get all hotels
app.get('/hotels', async (req, res) => {
  try {
    const hotels = await Hotel.find();
    res.json(hotels);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Example: Create a new hotel
app.post('/hotels', async (req, res) => {
  try {
    const newHotel = new Hotel(req.body);
    await newHotel.save();
    res.json(newHotel);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

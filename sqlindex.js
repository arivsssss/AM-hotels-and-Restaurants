const express = require('express');
const oracledb = require('oracledb');
const app = express();
const port = 3000; // You can choose any port

// Connect to Oracle Database
const dbConfig = {
  user: 'das21114',
  password: 'goodluck',
  connectString: 'oracle.driver',
};

async function init() {
  try {
    await oracledb.createPool(dbConfig);
    console.log('Connected to Oracle Database');
  } catch (err) {
    console.error('Error connecting to Oracle Database', err);
  }
}

init();

// Middleware to parse JSON requests
app.use(express.json());

// Routes

// Example: Get all hotels
app.get('/hotels', async (req, res) => {
  try {
    const connection = await oracledb.getConnection();
    const result = await connection.execute('SELECT * FROM hotels');
    const hotels = result.rows;
    res.json(hotels);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Example: Create a new hotel
app.post('/hotels', async (req, res) => {
  try {
    const connection = await oracledb.getConnection();
    const { name, location } = req.body;
    await connection.execute('INSERT INTO hotels (name, location) VALUES (:name, :location)', [name, location]);
    await connection.commit();
    res.json({ name, location });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

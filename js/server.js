const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

const pool = mysql.createPool({
  host: 'localhost',
  port: 33060,
  user: 'root',
  password: 'Kive3621',
  database: 'todo_calender',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

app.get('/tasks', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM tasks');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'An error occurred while fetching tasks' });
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
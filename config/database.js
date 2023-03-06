const mongoose = require("mongoose");

const { DB_CONNECT } = process.env;

mongoose.connect(DB_CONNECT, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});
const db = mongoose.connection;
db.on('error', (err) => {
  console.error('Connection error:', err);
});
db.once('connected', () => {
  console.log('Connected to database');
});


exports.connect = db;
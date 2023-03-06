//authorization
const express = require('express');
const bodyParser = require('body-parser')
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const router = express.Router();

const authRouter = require("./routes/auth");
const userRouter = require("./routes/users");

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

dotenv.config();

mongoose.connect(
  process.env.DB_CONNECT,
  { useUnifiedTopology: true, useNewUrlParser: true }
);

const db = mongoose.connection;
db.on('error', (err) => {
    console.log('Connection error:', err);
});

db.once('connected', () => {
    console.log('DB Connected')
})

app.use('/api/auth', authRouter);
app.use('/api/users', userRouter);





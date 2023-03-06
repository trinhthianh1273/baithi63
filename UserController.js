// Import dependencies
const express = require('express');
const session = require('express-session');
const bcrypt = require('bcrypt');
const bodyParser = require('body-parser')
const mysql = require("mysql");
const app = express();
const router = express.Router();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(session({
  secret: 'my_secret_key',
  resave: false,
  saveUninitialized: false
}));

//const db = require('../models/db');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  Password: '',
  database: 'pms'
});

db.connect((e) => {
  if (e) {
    console.log("Error connecting to database");
  } else {
    console.log("Database connection sucessfully");
  }
})

app.listen(3000, function () {
  console.log('Node app is running on port 3000');
});

app.get('/', function (req, res) {
  return res.send({ error: true, message: 'user successfully' })
});

// GET all users
app.get('/users', function (req, res) {
  db.query('SELECT * FROM users', function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'user list.' });
  });
});

// get one
app.get('/users/:id', function (req, res) {
  let users_id = req.params.id;
  if (!users_id) {
    return res.status(400).send({ error: true, message: 'Please provide users_id' });
  }
  db.query('SELECT * FROM users where UsersID=?', users_id, function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results[0], message: 'users detail.' });
  });
});


// INSERT user
app.post('/users', function (req, res) {
  //let users = req.body.user;
  let users = {
    "UserName": req.body.UserName,
    "Password": req.body.Password,
    "Description": req.body.Description,
    "EmployeeID": req.body.EmployeeID
  }
  if (!users) {
    return res.status(400).send({ error: true, message: 'Please provide user' });
  }
  bcrypt.genSalt(users.Password, function (err, salt) {
    bcrypt.hash(users.Password, salt, function (err, hash) {
      //users.Password = hash;

      db.query("INSERT INTO users SET ? ", users, function (error, results, fields) {
        if (error) throw error;
        return res.send(
          {
            error: true,
            data: hash,
            request: users,
            message: 'New users has been created successfully.'
          }
        );
      });
    })
  })

});


// UPDATE user
app.put('/users', function (req, res) {
  let users = {
    "UserName": req.body.UserName,
    "Password": req.body.Password,
    "Description": req.body.Description,
    "EmployeeID": req.body.EmployeeID,
  }
  let UsersID = req.body.UsersID;
  if (!users) {
    return res.status(400).send({ error: users, message: 'Please provide users and usersID' });
  }
  db.query("UPDATE users SET ? WHERE UsersID = ?", [users, UsersID], function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'users has been updated successfully.' });
  });
});


// update user by id
app.put("/users/:id", (req, res) => {
  let users = {
    "UserName": req.body.UserName,
    "Password": req.body.Password,
    "Description": req.body.Description,
    "EmployeeID": req.body.EmployeeID,
  }

  let UsersID = req.params.id;
  if (!users) {
    return res.status(400).send({ error: users, message: 'Please provide users and usersID' });
  }
  db.query("UPDATE users SET ? WHERE UsersID = ?", [users, UsersID], function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'users has been updated successfully.' });
  });
})

// DELETE user by id
app.delete("/users/:id", (req, res) => {
  let sql = "DELETE FROM users WHERE UsersID =  " + req.params.id + "";
  let status = db.query(sql, (error, result) => {
    if (error) {
      res.send({ status: false, msg: "User deleted failed" });
    } else {
      res.send({ status: true, msg: "User deleted successfully" });
    }
  })
});


// Check login
app.get('/login', (req, res) => {
  let users = {
    "UserName": req.body.UserName,
    "Password": req.body.Password
  }
  if (!users) {
    res.status(400).send("Please enter username and password");
  }
  let sql = 'SELECT * FROM users WHERE UserName = ?';
  db.query(sql, users.UserName, (err, result) => {
    if (err) throw err;

    if (result.lenghth == 0) {
      res.status(401).send('User not found');
    } else {
      //res.send('Logged in');

      let user = result[0];
      bcrypt.compare(users.Password, user.Password, (err, result) => {
        if (err) throw err;
        if (result) {
          req.session.authenticated = true;
          req.session.userId = user.UsersID;
          res.send('Logged in');
        } else {
          res.status(401).send('Invalid username or password');
        }
      })

      //return res.send({ error: true, data: result, message: 'login ok.' });
    }

  });
});

// Export router
module.exports = app;
// node UserController.js

// Import dependencies
const express = require('express');
const bodyParser = require('body-parser')
const mysql = require("mysql");
const app = express();
const router = express.Router();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
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
    return res.send({ error: true, message: 'employee successfully' })
});

// GET all employee
app.get('/employee', function (req, res) {
    db.query('SELECT * FROM employee', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: true, data: results, message: 'employee list.' });
    });
});

// get one
app.get('/employee/:id', function (req, res) {
    let employee_id = req.params.id;
    if (!employee_id) {
        return res.status(400).send({ error: false, message: 'Please provide employee id' });
    }
    db.query('SELECT * FROM employee where EmployeeID = ?', employee_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: true, data: results, message: 'employee detail.' });
    });
});

// post
app.post('/employee', function (req, res) {
    //let users = req.body.user;
    let employee = {
      "FirstName": req.body.FirstName,
      "Code": req.body.Code,
      "LastName": req.body.LastName,
      "Address": req.body.Address,
      "Phone": req.body.Phone,
      "Mobile": req.body.Mobile,
      "Email": req.body.Email,
      "Photo": req.body.Photo,
      "CurriculumVitaeType": req.body.CurriculumVitaeType,
      "CurriculumVitae": req.body.CurriculumVitae,
      "OrganizationID": req.body.OrganizationID,
      "DateofBirth": req.body.DateofBirth,
      "IndentifyNumber": req.body.IndentifyNumber,
      "IssuedPlace": req.body.IssuedPlace,
      "IssuedDate": req.body.IssuedDate,
      "PresentResidence": req.body.PresentResidence,
      "RecruitedDate": req.body.RecruitedDate,
      "DateOfEnteringOffice": req.body.DateOfEnteringOffice,
      "NominatedDate": req.body.NominatedDate,
      "SexID": req.body.SexID,
      "PositionID": req.body.PositionID,
      "Status": req.body.Status
    }
    if (!employee) {
      return res.status(400).send({ error: false, message: 'Please provide employee' });
    }
    db.query("INSERT INTO employee SET ? ", employee, function (error, results, fields) {
      if (error) throw error;
      return res.send(
        {
          error: true,
          data: results,
          request: employee,
          message: 'New employee has been created successfully.'
        }
      );
    });
  });

  // put
  app.put('/employee/:id', function (req, res) {
    let employee = {
        "FirstName": req.body.FirstName,
        "Code": req.body.Code,
        "LastName": req.body.LastName,
        "Address": req.body.Address,
        "Phone": req.body.Phone,
        "Mobile": req.body.Mobile,
        "Email": req.body.Email,
        "Photo": req.body.Photo,
        "CurriculumVitaeType": req.body.CurriculumVitaeType,
        "CurriculumVitae": req.body.CurriculumVitae,
        "OrganizationID": req.body.OrganizationID,
        "DateofBirth": req.body.DateofBirth,
        "IndentifyNumber": req.body.IndentifyNumber,
        "IssuedPlace": req.body.IssuedPlace,
        "IssuedDate": req.body.IssuedDate,
        "PresentResidence": req.body.PresentResidence,
        "RecruitedDate": req.body.RecruitedDate,
        "DateOfEnteringOffice": req.body.DateOfEnteringOffice,
        "NominatedDate": req.body.NominatedDate,
        "SexID": req.body.SexID,
        "PositionID": req.body.PositionID,
        "Status": req.body.Status
      }
    let employeeID = req.params.id;
    if (!employee) {
      return res.status(400).send({ error: employee, message: 'Please provide employee and employeeID' });
    }
    db.query("UPDATE employee SET ? WHERE EmployeeID = ?", [employee, employeeID], function (error, results, fields) {
      if (error) throw error;
      return res.send({ error: false, data: results, message: 'employee has been updated successfully.' });
    });
  });

  // delete
  app.delete("/employee/:id", (req, res) => {
    let sql = "DELETE FROM employee WHERE EmployeeID = " + req.params.id + "";
    let status = db.query(sql, (error, result) => { 
        if(error) {
            res.send({status: false, msg : "employee deleted failed"});
        } else {
            res.send({status: true, msg: "employee deleted successfully"});
        }
    })
  });

  // search
  app.delete("/employee/search", (req, res) => { 
    let employee = { 
        "Code" : req.body.Code,
        "FullName": req.body.FullName,
        "Address": req.body.Address,
        "Phone": req.body.Phone
    };

    let sql = "SELECT * FROM employee WHERE 1=1";
    let params = [];
    if (!employee) {
        return res.status(400).send({ error: employee, message: 'Please provide employee search information' });
      }
      sql += " AND Code LIKE ?";
      params.push(`%${employee.Code}%`);

      sql += " AND Address LIKE ?";
      params.push(`%${employee.Address}%`);

      sql += " AND Phone LIKE ?";
      params.push(`%${employee.Phone}%`);

      sql += " AND Phone LIKE ?";
      params.push(`%${employee.Phone}%`);
  })
  
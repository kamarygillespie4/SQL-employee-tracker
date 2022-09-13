//require inquirer
const inquirer = require("inquirer");
//require mysql
const mysql = require('mysql2');
// require express
const express = require('express');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());


//connect to db with mysql connection
const db = mysql.createConnection({
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // MySQL password
    password: '',
    database: 'employee_db'
});

db.connect((err) => {
    if (err) {
        console.log(err);
        return
    }
    console.log("Database connected")
    init();
})


function init() {
    inquirer
        .prompt({
            type: "list",
            name: "task",
            message: "What would you like to do?",
            choices: ["view all departments",
                "view all roles",
                "view all employees",
                "add a department",
                "add a role",
                "add an employee",
                "update an employee role"
            ]
        })
        .then(function({ task }) {
            switch (task) {
                case "view all departments":
                    viewDepartments();
                    break;

                case "view all roles":
                    viewRoles();
                    break;

                case "view all employees":
                    viewEmployees();
                    break;

                case "add a department":
                    addDepartment();
                    break;

                case "add a role":
                    addRole();
                    break;

                case "add an employee":
                    addEmployee();
                    break;

                case "update an employee role":
                    updateEmployeeRole();
                    break;
            }
        });
}







function viewDepartments(err) {
    console.log("Viewing Departments");
    if (err) throw err;
    db.query("SELECT * FROM department", function(err, result) {
        if (err) throw err;
        console.table(result);
        init();
    });
}

function viewRoles(err) {
    console.log("Viewing Roles");
    if (err) throw err;
    db.query("SELECT * FROM roles", function(err, result) {
        if (err) throw err;
        console.table(result);
        init();
    });
}

function viewEmployees(err) {
    console.log("Viewing Employees");
    if (err) throw err;
    db.query("SELECT * FROM employee", function(err, result) {
        if (err) throw err;
        console.table(result);
        init();
    });
}

function addDepartment() {
    console.log("Adding a Department");
    inquirer.prompt({
        type: "Input",
        message: "What is the name of the daprtment you would like to add?",
        name: "departmentname"
    })

    .then((response) => {
        db.query("INSERT INTO department (department_name) VALUES (?)", response.departmentname, (err, res) => {
            if (err) throw err;
            console.log(response.newDepartment + ` successfully created!`)
            viewDepartments();
            init();
        })
    })

};





function addRole() {
    console.log("Adding a Role");
    init();
}

function addEmployee() {
    console.log("Adding an Employee");
    init();
}

function updateEmployeeRole() {
    console.log("Updating an Employee Role");
    init();
}
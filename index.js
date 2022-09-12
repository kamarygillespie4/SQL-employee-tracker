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
    },
    console.log(`Connected to the employee database.`)
);

init();

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

function viewDepartments() {
    console.log("Viewing Departments");

}

function viewRoles() {
    console.log("Viewing Roles");
}

function viewEmployees() {
    console.log("Viewing Employees");
}

function addDepartment() {
    console.log("Adding a Department");
}

function addRole() {
    console.log("Adding a Role");
}

function addEmployee() {
    console.log("Adding an Employee");
}

function updateEmployeeRole() {
    console.log("Updating an Employee Role");
}
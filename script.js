const mysql = require('mysql');
const inquirer = require("inquirer");
const cTable = require('console.table');
const connection = mysql.createConnection({
  host     : 'testing',
  user     : 'root',
  password : 'secret'
});
 

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
 
  console.log('connected as id ' + connection.threadId);
});


inquirer.prompt([/* Pass your questions in here */], function( answers ) {
    // Use user feedback for... whatever!!
});


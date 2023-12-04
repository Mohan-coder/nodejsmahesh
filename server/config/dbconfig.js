const mysql = require('mysql2')

const dbconnect = mysql.createConnection({
    user:'root',
    host:'localhost',
    password:'Mahesh@mysql123',
    database:'employeeadmin'
});

dbconnect.connect((err)=>{
    if(err) throw err;
    console.log('DB connected sucessfully')
});

module.exports = dbconnect;
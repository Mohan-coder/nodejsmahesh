const mysql = require('mysql2')
const dbconnect = require('../config/dbconfig')

exports.createemp = async (req, res) => {
    try {
        const { first_name, last_name, email, phone, address, city, postal_code, country, state,
            date_of_joining, pan_number, adhar_number, marital_status, spouse_name, marriage_date, gender_status,
            date_of_birth, age, bank_name, bank_holder_name, bank_account_number, IFSC_code } = req.body;

        if (!first_name || !last_name || !email || !phone || !address || !city || !postal_code || !country ||
            !state || !date_of_joining || !pan_number || !adhar_number || !marital_status ||
            !gender_status || !date_of_birth || !age || !bank_name || !bank_holder_name || !bank_account_number ||
            !IFSC_code){
            errors = "data not found / empty data in DB"
            res.status(400).json({
                errors,
                status: false, 
                message: "Sorry, all inputs are required"
            })
            return;
        }
        dbconnect.query("SELECT COUNT(*)  AS cnt FROM employee WHERE last_name = ? OR email = ? OR pan_number = ? OR adhar_number = ? ", [last_name , email , pan_number , adhar_number], (err, result) => {
            if (err) {
                console.log(err);
            }
            else {
                if (result[0].cnt > 0) {
                    console.log("phone_num already exist")
                    console.log(result)
                    res.status(400).json({
                        status: false,
                        message: "last_name , email , pan_number or adhar_number already exist"
                    })
                } else {
                    dbconnect.query("INSERT INTO employee SET ?", { first_name, last_name, email, phone, address, city, postal_code, country, state, date_of_joining,
                        pan_number, adhar_number, marital_status, spouse_name, marriage_date, gender_status, date_of_birth, age,
                        bank_name, bank_holder_name, bank_account_number, IFSC_code }, (err, result) => {
                        if (err) {
                            console.log("error" + err)
                            res.status(400).json({
                                err,
                                status: false,
                                message: "Sorry, data not created"
                            })
                        }
                        res.status(200).json({
                            status: true,
                            data: req.body,
                            message: "Employee data created sucessfully"
                        })
                    })
                } 
            }
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
};

exports.getemployee = async (req, res) => {
    try {
        dbconnect.query("select * from employee", (err, result, fields) => {
            if (result.length === 0 || !result) {
                errors = "data not found / empty data in DB"
                res.status(400).json({
                    err,
                    status: false,
                    message: "Sorry, data not found"
                })
                return;
            } else {
                res.status(200).json({
                    status: true,
                    data: result,
                    message: "data reached sucessfully"
                })
            }
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
}

exports.getemployeid = async (req, res) => {
    try {
        const id = req.params.id
        dbconnect.query("select * from employee WHERE _id = ?", id, (err, result, fields) => {
            if (result.length === 0 || !result) {
                errors = "data not found / empty data in DB"
                res.status(400).json({
                    err,
                    status: false,
                    message: "Sorry, data not found"
                })
                return;
            } else {
                res.status(200).json({
                    status: true,
                    data: result[0],
                    message: "data reached sucessfully"
                })
            }
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
}

exports.deleteemployeid = async (req, res) => {
    try {
        const id = req.params.id
        dbconnect.query("DELETE  from employee WHERE id = ?", id, (err, result, fields) => {
            console.log(result)
            if (result.affectedRows <= 0 ) {
                errors = "data not found / empty data in DB"
                res.status(400).json({
                    errors,
                    status: false,
                    message: "Sorry, data not found to Delete"
                })
                return;
            } else {
                res.status(200).json({
                    status: true,
                    data: "Employee data deleted",
                    message: "deleted data sucessfully"
                })
            }
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
}

exports.updateemployee = async (req, res) => {
    try {
        const id = req.params.id;
        const data = req.body
        dbconnect.query("UPDATE employee SET ? WHERE _id = ?", [data , id], (err, result, fields) => {
            console.log(id)
            if (err) {
                errors = "data not found / empty data in DB"
                res.status(400).json({
                    errors,
                    status: false,
                    message: "please Enter valid updated input fields"
                })
                return;
            } else {
                res.status(200).json({
                    status: true,
                    data: result,
                    message: "UPDATED data sucessfully"
                })
            }
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
}


exports.test = async (req, res) => {
    try {
        const result = "data test"
        if (result.length === 0 || !result) {
            errors = "data not found / empty data in DB"
            res.status(400).json({
                errors,
                status: false,
                message: "Sorry, data not found"
            })
            return;
        }
        res.status(200).json({
            status: true,
            data: result,
            message: "data reached sucessfully"
        })
    }
    catch (err) {
        res.status(500).json({
            status: false,
            data: err.message,
            message: "server error"
        })
    }
}
const express = require('express')
const app = express()
require('dotenv').config()
const mysql = require('mysql2')
const cors = require("cors")
require('./config/dbconfig')
const router = require('./routes/routes')


app.use(cors());
app.use(express.json())
app.use('/api',router)

// app.use(cors({
//     origin: process.env.CORS_HOST,
//     methods: ["GET", "POST", "PUT", "DELETE"],
//     credentials: true, 
// }))
 
const port = process.env.PORT || 3400
app.listen(port, ()=>{
    console.log(`server runnig on port ${port}`)
})
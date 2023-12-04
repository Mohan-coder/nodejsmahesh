const express = require('express')
const router = express.Router()
const controller = require('../controller/controller')

router.post('/createemployee',controller.createemp )
router.get('/getemployeedata',controller.getemployee )
router.get('/getemployeedata/:id',controller.getemployeid )
router.delete('/getemployeedata/:id',controller.deleteemployeid )
router.put('/getemployeedata/:id',controller.updateemployee )
router.get('/emp',controller.test )
module.exports = router;
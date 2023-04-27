const express = require('express');
const router = express.Router();

const { createSchedule, getSchedule, updateSchedule, deleteSchedule } = require('../controllers/schedulerController');

// Define API routes for scheduling functionality.
router.post('/', createSchedule);
router.get('/:id', getSchedule);
router.put('/:id', updateSchedule);
router.delete('/:id', deleteSchedule);

module.exports = router;
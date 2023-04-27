const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

const schedulerRoutes = require('./routes/scheduler');

const PORT = 3301;

app.get('/', function(req, res, next) {
  res.send('Hello World')
})

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended:true }));

app.use(cors());

app.use('/scheduler', schedulerRoutes);

app.listen(PORT, () => {
  console.log(`Serves is listening on port ${PORT}`);
});
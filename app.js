const express = require('express');
const cors = require('cors');
const app = express();

// configure body-parser package
// configure cors
// import scheduler routes

const PORT = 3301;

app.get('/', function(req, res, next) {
  res.send('Hello World')
})

app.listen(PORT, () => {
  console.log(`Serves is listening on port ${PORT}`);
});
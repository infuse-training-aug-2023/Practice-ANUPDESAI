const express = require('express');
const app = express();
port = process.env.port || 3000

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/about', (req, res) => {
  res.send('This is the about page');
});

app.listen(port, () => {
  console.log('Server listening on port 3000');
});
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World!');
});
const port = process.env.PORT || 3001;

app.listen(port, () => {
  console.log('Server listening on port 3000');
});
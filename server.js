// server.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  // This is what the app says when you visit it!
  res.send('Hello from the Robot Pipeline! This app is ready! 🚀');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
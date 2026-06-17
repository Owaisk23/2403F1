// const express = require('express');
import express from 'express';
import path from 'path';
const app = express();

const port = 3000;

const dirname = path.resolve();

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/about', (req, res) => {
  res.send('Hello in About Page!');
});

app.get('/image', (req, res) => {
  res.sendFile(dirname + '/static/bachra.jpg');
});

app.use('/home', express.static(dirname, {index: '/static/index.html'}));


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
const express = require('express');
const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();
const app = express();

app.use(express.json());

app.get('/usuarios', async (req, res) => {
  const usuarios = await prisma.user.findMany();
  res.json(usuarios);
});



app.listen(3000, () => {
  console.log('API está rodando em http://localhost:3000');
});

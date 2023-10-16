const express = require('express');
const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient({
  datasources: {
    db: {
      url: 'mysql://localhost:3307/projetointegrador',
    },
  },
});

const app = express();

app.use(express.json());

app.get('/usuarios', async (req, res) => {
  const usuarios = await prisma.usuario.findMany();
  res.json(usuarios);
});

app.listen(3307, () => {
  console.log('API está rodando em http://localhost:3307');
});

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

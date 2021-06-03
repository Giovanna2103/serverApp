const express = require("express");
const cors = require("cors");
const mysql = require("mysql");
const bodyParser = require("body-parser");


const app = express();
app.use(bodyParser.json());


const configCors = {
    origin: "*",
    optionsStatusSuccess: "200",
  };
  
// Configurar a conexao com o banco de dados
const cx = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "21032001",
  database: "appfinanca",
  port: "3306",
});

cx.connect((error, dados) => {
  if (error) {
    console.error(`Erro ao tentar executar o servidor -> ${error.stack}`);
    return;
  }
  console.log(`Dados do servidor -> ${cx.threadId}`);
});


// -------------------- Rota para o usuário --------------------------


app.post("/usuario/cadastro", cors(configCors), (req, res) =>{
  cx.query("insert into tbusuario set ?",[req.body],(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não cadastrou -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});

app.get("/usuario/listar", cors(configCors), (req, res) =>{
  cx.query("select * from tbusuario",(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não encontrado -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});


// ----------------------- Rota para logar com o usuario ---------------------


app.post("/usuario/login", cors(configCors), (req, res) => {
  const us = req.body.nomeusuario;
  const em = req.body.email;
  const sh = req.body.senha;

  cx.query(`select u.* from tbusuario u
  where (u.nomeusuario=? or u.email=?) and u.senha=?;`,
  [us,em, sh],
  (error,result)=> {
    if(error){
      res.status(400).send({output:`Erro ao tentar efetuar login -> ${error}`});
      return;
    };
    res.status(200).send({output:result})
  });
});


// -------------- Rota para Despesas ------------


app.post("/despesas", cors(configCors), (req, res) =>{
  cx.query("insert into tbdespesas set ?",[req.body],(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não cadastrou -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});


app.get("/despesas/listar", cors(configCors), (req, res) =>{
  cx.query("select * from tbdespesas",(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não encontrado -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});


// -------------- Rota para Receita ------------


app.post("/receita", cors(configCors), (req, res) =>{
  cx.query("insert into tbreceita set ?",[req.body],(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não cadastrou -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});

app.get("/receita/saldo", cors(configCors), (req, res) =>{
  cx.query("select * from tbreceita",(erro,result) => {
    if (erro) {
      res.status(400).send({ output: `Não encontrado -> ${erro}` });
      return;
    }
    res.status(201).send({ output: result });

  })
});



app.listen(5521, () => console.log("Servidor ondeline na porta 5521"));


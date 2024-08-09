# language: pt

Funcionalidade: Login
  Como um QA estou buscando conhecimento em novas tecnologias
  Decidi aprender um pouco sobre PlayWright

  @login_valido
  Cenário: Login Valido
    Dado que informo usuario '#######' e senha '######'
    Quando clico em logar
    Então efetuo login com sucesso
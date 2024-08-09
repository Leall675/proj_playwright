# language: pt

Funcionalidade: Login
  Eu como QA da RD
  Quero garantir a qualidade dos cenários referente a Login

  @login_valido
  Cenário: Login Valido
    Dado que informo usuario '#######' e senha '######'
    Quando clico em logar
    Então efetuo login com sucesso
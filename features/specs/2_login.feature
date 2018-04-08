# language: pt

Funcionalidade: Login no app



@cadastro
Cenário: Criando uma conta 
  Dado que quero fazer o login e não sou cadastrado 
  Quando clico em cadastrar 
  E preencho os campos 
  Então sou cadastrado e sou logado no app

@login
Cenário: Logando 
  Quando quero logar no app  
  Então vou no menu e clico na tela de login e me logo com sucesso
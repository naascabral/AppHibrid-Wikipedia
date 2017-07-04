# language: pt

Funcionalidade: Tela inicial e Pesquisa


Cenário: tela inicial app Wikipedia
  Quando ele carrega sua tela inicial  
  Então consigo vizualizar a lista com: noticias, curiosidades e pesquisas.

@login
Cenário: login app Wikipedia  
  Dado que estou na tela inicial do app
  Quando vou no botão do lado direito na parte superior da tela 
  E clico em login in to Wikipedia
  E digito email e senha
  Então clico no botão login e logo com sucesso no sistema.
      
@pesquisa
Cenário: pesquisa app Wikipedia 
  Dado que estou na tela inicial do app
  Quando vou na barra de pesquisa 
  E digito minha pesquisa
  Então visualizo a minha pesquisa.
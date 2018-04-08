# language: pt

Funcionalidade: Tela inicial 


Cenário: Tela Inicial App Wikipedia
  Dado Estou com o App executando
  Quando quero vizualizar: noticias, curiosidades e pesquisas.
  Então então faço o scroll de tela

@busca
Cenário: Busca
  Quando Clico no campo de busca 
  Então Faço minha busca

@save
Cenário: Salvar
  Dado Que desejo salvar uma noticia
  Quando Clico no boão save
  Então salvo a noticia

@share
Cenário: Salvar
  Dado Que desejo compartilhar uma noticia
  Quando Clico no boão share
  Então compartilho uma noticia

@hide
Cenário: ocultar um Card
  Quando Clico no boão menu de um card
  Então clico em "HIDE THIS CARD" e oculto um card


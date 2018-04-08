Quando(/^Estou com o App executando$/) do
    $driver.find_element(:id, "org.wikipedia:id/single_fragment_toolbar_wordmark")
end
Quando(/^quero vizualizar: noticias, curiosidades e pesquisas\.$/) do
    $driver.find_element(:id, "org.wikipedia:id/view_card_header_title")
end
  
Então(/^então faço o scroll de tela$/) do
    find_element_in_list(@lista)
end
  
Quando(/^Clico no campo de busca$/) do
    $driver.find_element(:id, "org.wikipedia:id/search_container").click
end
  
Então(/^Faço minha busca$/) do
    valid_pesquisa = @settings['pesquisa']['pesquisar']
    $driver.find_element(:id, "org.wikipedia:id/search_src_text").send_keys(valid_pesquisa)
end
  
Dado(/^Que desejo salvar uma noticia$/) do
    find_element_in_list_save(@lista)
end
  
 Quando(/^Clico no boão save$/) do
    $driver.find_element(:id, "org.wikipedia:id/view_card_action_footer_button_text").click
    $driver.find_element(:id, "org.wikipedia:id/onboarding_button").click
end
  
Então(/^salvo a noticia$/) do
    $driver.find_element(:id, "org.wikipedia:id/text_input").clear
    valid_save = @settings['salva']['salvar']
    $driver.find_element(:id, "org.wikipedia:id/text_input").send_keys(valid_save)
    $driver.find_element(:id, "android:id/button1").click
end

Dado(/^Que desejo compartilhar uma noticia$/) do
  find_element_in_list_save(@lista)
end

Quando(/^Clico no boão share$/) do
  $driver.find_element(:id,"org.wikipedia:id/view_card_action_footer_share_button").click
end

Então(/^compartilho uma noticia$/) do
  $driver.find_element(:id,"android:id/icon").click
  $driver.find_element(:id,"android:id/button1").click
  $driver.find_element(:id,"identifierId").click
end

Quando(/^Clico no boão menu de um card$/) do
  $driver.find_element(:id,"org.wikipedia:id/view_list_card_header_menu").click  
end

Então(/^clico em "([^"]*)" e oculto um card$/) do |arg1|
  $driver.find_element(:id,"org.wikipedia:id/title").click
  $driver.find_element(:id,"org.wikipedia:id/view_list_card_header_menu").click  
end
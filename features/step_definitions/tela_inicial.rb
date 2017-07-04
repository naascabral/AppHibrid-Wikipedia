# encoding: utf-8

Quando(/^ele carrega sua tela inicial$/) do
  $driver.find_element(:id, "org.wikipedia:id/single_fragment_toolbar_wordmark")

end

Então(/^consigo vizualizar a lista com: noticias, curiosidades e pesquisas\.$/) do
  find_element_in_list(@lista)
end

Dado(/^que estou na tela inicial do app$/) do
  $driver.find_element(:id, "org.wikipedia:id/single_fragment_toolbar_wordmark")
end

Quando(/^vou no botão do lado direito na parte superior da tela$/) do
  $driver.find_element(:id, "org.wikipedia:id/menu_overflow_button").click
end

Quando(/^clico em login in to Wikipedia$/) do
  $driver.find_element(:id, "org.wikipedia:id/explore_overflow_account_name").click
  
end

Quando(/^digito email e senha$/) do
  valid_email = @settings['valid_user']['email']
  valid_senha = @settings['valid_user']['senha']
  $driver.find_element(:id, "org.wikipedia:id/login_username_text").send_keys(valid_email)
  $driver.find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.View[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.FrameLayout[1]/android.widget.EditText[1]").send_keys(valid_senha)
end

Então(/^clico no botão login e logo com sucesso no sistema\.$/) do
  $driver.find_element(:id, "org.wikipedia:id/login_button").click
  $driver.find_element(:id, "org.wikipedia:id/menu_overflow_button").click
end

Quando(/^vou na barra de pesquisa$/) do
  $driver.find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.view.View[1]/android.support.v4.view.ViewPager[1]/android.view.View[1]/android.widget.FrameLayout[1]/android.support.v7.widget.RecyclerView[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.TextView[1]").click
end

Quando(/^digito minha pesquisa$/) do
  valid_pesquisa = @settings['pesquisa']['pesquisar']
  $driver.find_element(:id, "org.wikipedia:id/search_src_text").send_keys(valid_pesquisa)
end

Então(/^visualizo a minha pesquisa\.$/) do
   $driver.find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[2]/android.view.View[1]/android.support.v4.view.ViewPager[1]/android.view.View[1]/android.widget.FrameLayout[1]/android.support.v7.widget.RecyclerView[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.ImageView[1]").click
   $driver.find_element(:id, "org.wikipedia:id/view_page_title_text")
end
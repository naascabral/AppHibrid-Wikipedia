Dado(/^que quero fazer o login e não sou cadastrado$/) do
    $driver.find_element(:id,"org.wikipedia:id/menu_overflow_button").click
    $driver.find_element(:id,"org.wikipedia:id/explore_overflow_account_name").click
end
  
Quando(/^clico em cadastrar$/) do
    $driver.find_element(:id,"org.wikipedia:id/login_create_account_link").click
end
  
Quando(/^preencho os campos$/) do
    $username = Faker::Name.name
    senha = @settings['criar_user']['senha']
    senha_rept = @settings['criar_user']['rept']
    email = Faker::Internet.email

    $driver.find_element(:id,"org.wikipedia:id/create_account_username").send_keys($username)
    $driver.find_element(:id,"org.wikipedia:id/create_account_password_input").send_keys(senha)
    $driver.find_element(:id,"org.wikipedia:id/create_account_password_repeat").send_keys(senha_rept)
    $driver.find_element(:id,"org.wikipedia:id/create_account_email").send_keys(email)
    $driver.find_element(:id,"org.wikipedia:id/create_account_submit_button").click
    #gambs para o captcha
    sleep(10)
    $driver.find_element(:id,"org.wikipedia:id/captcha_submit_button").click
end
  
Então(/^sou cadastrado e sou logado no app/) do
    $driver.find_element(:id,"org.wikipedia:id/menu_overflow_button").click
    $driver.find_element(:id,"org.wikipedia:id/explore_overflow_log_out")
end

Quando(/^quero logar no app$/) do
    $driver.find_element(:id,"org.wikipedia:id/menu_overflow_button").click
    $driver.find_element(:id,"org.wikipedia:id/explore_overflow_account_name").click
end
  
Então(/^vou no menu e clico na tela de login e me logo com sucesso$/) do
    username = @settings['valid_user']['name']
    senha = @settings['valid_user']['senha']
    $driver.find_element(:id,"org.wikipedia:id/login_username_text").send_keys(username)
    $driver.find_element(:id,"org.wikipedia:id/login_password_input").send_keys(senha)
    #logar
    $driver.find_element(:id,"org.wikipedia:id/login_button").click
    $driver.find_element(:id,"org.wikipedia:id/menu_overflow_button").click
    $driver.find_element(:id,"org.wikipedia:id/explore_overflow_log_out")
end

  
  
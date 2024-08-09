class LoginPage < SitePrism::Page
  include LoginModule
  set_url ''

    element :username,  '[name="user_name"]'
    element :password,  '[name="user_password"]'
    element :logar,  'button[type=submit]'

    element :btnTodos, :xpath, "//div[text()='Todos']"
    element :todos, :xpath, '//*[contains(text(), "Todos")]'
  end

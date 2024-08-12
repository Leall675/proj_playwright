class LoginPage < SitePrism::Page
  include LoginModule
  set_url ''

    element :btnFacaLogin,        '#nav-link-accountList'
    element :username,            '#ap_email'
    elements :btnContinuar,       '#continue'
    element :password,            '#ap_password'
    element :btnLogar,            '#signInSubmit'

    element :btnTodos, :xpath, "//div[text()='Todos']"
    element :todos, :xpath, '//*[contains(text(), "Todos")]'
  end

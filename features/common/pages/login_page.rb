class LoginPage < SitePrism::Page
  include LoginModule
  set_url ''

    element :username,  '[name="user_name"]'
    element :password,  '[name="user_password"]'
    element :logar,  'button[type=submit]'

    element :btnTodos, :xpath, "//div[text()='Todos']"
    element :todos, :xpath, '//*[contains(text(), "Todos")]'

    # # Botão para logar
    # element :btnSubmit, '[data-qa=btn_signin]'
    # element :btnMinhaConta, '.actions'
    # elements :menuLogout, '[class*=MyAccountMenuLinkstyles__MyAccountMenuLinkStyles]'
    # element :menuHome, '[data-qa="account"]'
    # elements :menuPrivacidadeDados, '.MyAccountMenuLinkstyles__MyAccountMenuLinkStyles-sc-1kmdp1i-0'
  end

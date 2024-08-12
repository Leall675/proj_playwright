module LoginModule
  include PageObjects

  def informar_dados(user, senha)
    btnFacaLogin.click
    username.set user
    binding.pry
    btnContinuar[1].click
    password.set senha
    btnLogar.click
  end

end

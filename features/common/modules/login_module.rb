module LoginModule
  include PageObjects

def informar_dados(user, senha)
  username.set user
  password.set senha
end

end

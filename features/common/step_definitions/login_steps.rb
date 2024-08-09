Dado('que informo usuario {string} e senha {string}') do |user, senha|
  login.load
  login.informar_dados(user, senha)
end

Quando('clico em logar') do
  login.logar.click
end

Entao('efetuo login com sucesso') do
  login.todos.visible?
  login.btnTodos.visible?
end
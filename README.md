# Autor
- Matheus Leal

# Como o projeto está organizado ##
***
```
proj_playwright/
├───features
│   ├───common
│   │   ├───modules
│   │   ├───specs
│   │   └───step_definitions
│   ├───pages
│   └───support
│       ├───config
│       └───data
│       ├───capybara_setting.rb
│       ├───env.rb
│       ├───page_objects.rb
└───relatorios
```

# Configuração do projeto para executar no Windows #
## Pré-requisitos❗ ##
Para executar as automações contidas nesse projeto é necessário ter instalado:
- [Ruby](https://www.ruby-lang.org/pt/documentation/installation/)

```bash

# Caso não tenha o npm é possivel baixar via home brew
brew /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install node

# Instale o playwright
npm install playwright

npx playwright install

# Instale a gem Bundler
$ gem install bundler

# Instale todas as dependências
$ bundle install

# Configurando EventMachine
Vá para a pasta C:\Ruby24-x64\lib\ruby\gems\2.4.0\gems\eventmachine-1.2.5-x64-mingw32\lib

abra o arquivo eventmachine.rb

Escreva require 'em/pure_ruby' na primera linha do arquivo

```

### Elementos de tela ###

```ruby
class ExampleScreen

	# Abaixo temos a declaração dos elementos necessários
	element :inputName,     '#nome_do_campo'
	element :inputTelefone, '.nome_do_campo'
	
end
```

```ruby
Quando('confirmo a ação') do
	page.metodo_exemplo
end
```

### Reaproveitamento dos métodos ###

Todos os métodos que forem iguais entre as plataformas devem estar em módulos e incluídos nas screens que fizerem sentido, como no exemplo abaixo:

Modulo:

```ruby
module ExampleModule
	
  def metodo_exemplo
    inputName.set 'Nome Exemplo'
    inputTelefone.set '11987654123'
  end
  
end
```

Classes:

```ruby
class ExampleScreen

  include ExampleModule

	element :inputName,     '#nome_do_campo'
	element :inputTelefone, '.nome_do_campo'
	
end
```

Chamada:

```ruby
Quando('confirmar a ação') do
  	page.metodo_exemplo
end
```
  ## Executando o projeto ##

- Executando o projeto
  ```
  cucumber -t <teste selecionado>
  ```


O projeto está estruturado de uma forma para facilitar o desenvolvimento e o entendimento.
Duvidas, sujestões e criticas são aceitas, para que possamos trabalhar juntos na melhoria do processo
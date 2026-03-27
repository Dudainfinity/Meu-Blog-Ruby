# Meu Blog Ruby

Rede social estilo Instagram feita com Ruby on Rails.

## Stack

- Ruby 3.2+
- Rails 8.1.3
- SQLite
- Devise
- Active Storage
- Turbo + Stimulus

## Funcionalidades

- Cadastro e login de usuários
- Logout com Devise
- Feed de posts com visual moderno
- Criação de publicações com imagem
- Página de perfil do usuário logado
- Busca de posts

## Rotas principais

- `/users/sign_in` — login
- `/users/sign_up` — cadastro
- `/posts` — feed principal
- `/posts/new` — nova publicação
- `/meu_perfil` — perfil do usuário logado

## Como rodar o projeto

1. Clone o repositório:

	`git clone https://github.com/Dudainfinity/Meu-Blog-Ruby.git`

2. Entre na pasta:

	`cd Meu-Blog-Ruby`

3. Instale as gems:

	`bundle install`

4. Crie e migre o banco:

	`bin/rails db:create db:migrate`

5. Inicie o servidor:

	`bin/rails server`

6. Acesse no navegador:

	`http://localhost:3000`

## Upload de imagens

O projeto usa Active Storage para anexar imagens aos posts.

Se necessário, rode novamente:

`bin/rails active_storage:install`

Depois:

`bin/rails db:migrate`

## Estrutura principal

- [app/controllers/posts_controller.rb](app/controllers/posts_controller.rb)
- [app/controllers/profiles_controller.rb](app/controllers/profiles_controller.rb)
- [app/models/post.rb](app/models/post.rb)
- [app/models/user.rb](app/models/user.rb)
- [app/views/posts/index.html.erb](app/views/posts/index.html.erb)
- [app/views/posts/new.html.erb](app/views/posts/new.html.erb)
- [app/views/profiles/show.html.erb](app/views/profiles/show.html.erb)

## Observações

- O redirecionamento após login leva o usuário para `/posts`.
- O projeto está configurado para autenticação obrigatória nas páginas internas.
- O banco usado em desenvolvimento é SQLite.

## Publicação

Repositório GitHub:

`https://github.com/Dudainfinity/Meu-Blog-Ruby`

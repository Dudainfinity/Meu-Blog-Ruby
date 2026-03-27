<div align="center">
	<img src="public/icon.png" alt="Logo Meu Blog Ruby" width="96" />
	<h1>Meu Blog Ruby</h1>
	<p>Rede social estilo Instagram feita com Ruby on Rails.</p>
</div>

## Prévia visual

<div align="center">
	<img src="public/icon.svg" alt="Identidade visual do projeto" width="120" />
</div>

> Observação: no repositório atual, as imagens disponíveis são os ícones do projeto. Quando você adicionar capturas de tela do feed, login e perfil, elas podem entrar aqui nesta seção.
<img width="1835" height="915" alt="Captura de tela de 2026-03-27 20-13-04" src="https://github.com/user-attachments/assets/9add8746-f26c-4047-9dc6-c96b7ffdd1a3" />

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

## Telas do projeto

- Login de usuários
- Cadastro de usuários
- Feed principal com visual moderno
- Criação de post com imagem
- Página Meu Perfil

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

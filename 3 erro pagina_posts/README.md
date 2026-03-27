# Erro da página /posts

## O que aconteceu
A página de posts não carregava e aparecia erro de rota:

`ActionController::RoutingError (No route matches [GET] "/posts")`

Em outro momento também apareceu erro de migration pendente para posts.

## Causas
1. A migration de posts estava pendente (`create_posts`).
2. A rota de posts no `routes.rb` estava ausente/inconsistente durante as alterações, então `/posts` não era reconhecida.

## Como foi consertado
1. Rodamos as migrations:
   - `bin/rails db:migrate`
2. Corrigimos as rotas em `config/routes.rb`:
   - Mantido `resources :posts`
   - Removida duplicação da rota de posts
3. Validamos com `bin/rails routes` que as rotas existem:
   - `GET /posts` (`posts#index`)
   - `GET /posts/:id` (`posts#show`)

## Resultado
A rota `/posts` voltou a funcionar e a página de posts pode ser acessada normalmente.

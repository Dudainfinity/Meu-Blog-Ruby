# Erro de sign_out

## O que aconteceu
Ao clicar em sair, a aplicação tentava acessar a URL `/users/sign_out` com método `GET`.
O Devise estava com rota de logout esperando outro método em parte do fluxo, gerando o erro:

`ActionController::RoutingError (No route matches [GET] "/users/sign_out")`

Também havia configuração de rotas customizadas incorretas para login/logout em `routes.rb`.

## Como foi consertado
1. As rotas do Devise foram corrigidas para configuração padrão e estável.
2. O logout foi configurado para aceitar `DELETE` e `GET` (compatibilidade):
   - em `config/initializers/devise.rb` (`config.sign_out_via = [:delete, :get]`)
   - em `config/routes.rb` (`devise_for :users, sign_out_via: [:delete, :get]`)
3. No layout, o link de sair foi trocado para botão com método correto:
   - `button_to "sign out", destroy_user_session_path, method: :delete`
4. O servidor Rails foi reiniciado para recarregar as mudanças.

## Resultado
O logout voltou a funcionar sem erro de rota.

# Erro de login

## O que aconteceu
A página de login não aparecia como esperado.
Mesmo acessando `/users/sign_in`, havia redirecionamento para a página inicial em alguns cenários, o que causava confusão durante os testes.

## Causa
A autenticação global no `ApplicationController` estava afetando o fluxo de acesso às telas do Devise.

## Como foi consertado
1. Mantivemos o Devise corretamente configurado no projeto:
   - `devise_for :users` nas rotas
   - `User` com módulos do Devise
2. Ajustamos o filtro global para não bloquear controllers do Devise:
   - `before_action :authenticate_user!, unless: :devise_controller?`
3. Confirmamos as rotas de autenticação geradas:
   - `GET /users/sign_in`
   - `POST /users/sign_in`

## Resultado
A tela de login passou a abrir corretamente no endereço `/users/sign_in`.

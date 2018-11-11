Rails.application.routes.draw do
  get 'agus/name'
  get 'agus/age'
  get 'samurai', to: 'agus#name'
  get 'static_pages/home'
  get 'static_pages/help'
  root 'application#hello'
end

Rails.application.routes.draw do
  get 'product/new'
  get 'product/new', to: 'product#new'
  post 'product/new', to: 'product#new_post'
  get 'product/list', to: 'product#list'
  root 'product#list'
end

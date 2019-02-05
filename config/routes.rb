Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'product/new', to: 'product#new_post'
  get 'product/list', to: 'product#list'
  get 'product/find/barcode/:id', to: 'product#find_barcode_id'
  get 'product/find/name/:name', to: 'product#find_name'
  root 'product#list'
end

Rails.application.routes.draw do
  root to: 'top#index'
  get 'about' => 'top#about', as: :about

  devise_for :users
  resources :users, only: %w( show )

  resources :bots
  get 'bots/:id/delete' => 'bots#delete', as: :delete_bot

  resources :adapters
  get 'adapters/:id/delete' => 'adapters#delete', as: :delete_adapter

  resources :scripts
  get 'scripts/:id/delete' => 'scripts#delete', as: :delete_script

  namespace :admin do
    resources :users, only: %w( index )
  end
  get 'admin/users/:id/admin'   => 'admin/users#admin',   as: :admin_admin_user
  get 'admin/users/:id/unadmin' => 'admin/users#unadmin', as: :unadmin_admin_user
end

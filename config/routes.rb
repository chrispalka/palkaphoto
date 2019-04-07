Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios

  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'

  root to: 'portfolios#index'
end

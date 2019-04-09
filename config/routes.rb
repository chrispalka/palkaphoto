Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios

  # get '/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio_path'
  get 'new', to: 'portfolios#new'
  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'
  get '/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'portfolios#index'
end

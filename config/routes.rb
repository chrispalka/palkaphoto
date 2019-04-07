Rails.application.routes.draw do
  devise_for :users
  resources :portfolios

  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'

  root to: 'portfolios#index'
end

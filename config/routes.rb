Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'portfolios#about'
end

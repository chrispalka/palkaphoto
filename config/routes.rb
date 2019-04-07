Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'
end

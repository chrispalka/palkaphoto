Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:edit, :index, :show] do
    put :sort, on: :collection
  end

  get 'new', to: 'portfolios#new'
  get 'palkafoodie', to: 'portfolios#palkafoodie'
  get 'contact', to: 'portfolios#contact'
  get '/:id', to: 'portfolios#show', as: 'portfolio_show'
  get '/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'

  root to: 'portfolios#index'
end

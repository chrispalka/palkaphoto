Rails.application.routes.draw do
  resources :blogs, except: [:index, :new, :edit, :show]
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:edit, :index, :show, :new, :show] do
    put :sort, on: :collection
  end

  get 'palkafoodie/new', to: 'blogs#new'
  get 'palkafoodie', to: 'blogs#index'
  get 'palkaphoto/:id/edit', to: 'blogs#edit', as: 'edit_blog'
  get 'palkafoodie/:id', to: 'blogs#show', as: 'blog_show'
  get 'new', to: 'portfolios#new'
  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'
  get '/:id', to: 'portfolios#show', as: 'portfolio_show'
  get '/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'

  root to: 'portfolios#index'
end

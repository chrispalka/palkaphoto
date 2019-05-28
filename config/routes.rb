Rails.application.routes.draw do
  resources :categories, only: [:index]

  resources :blogs, except: [:index, :new, :edit, :show] do
    member do
      get :toggle_status
    end
  end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:edit, :index, :show, :new, :show] do
    put :sort, on: :collection
  end

  get 'category/:id', to: 'categories#show', as: 'category_show'
  get 'palkafoodie/new', to: 'blogs#new'
  get 'palkafoodie', to: 'blogs#index'
  get 'palkafoodie/:id/edit', to: 'blogs#edit', as: 'edit_blog'
  get 'palkafoodie/:id', to: 'blogs#show', as: 'blog_show'
  get 'new', to: 'portfolios#new'
  get 'about-me', to: 'portfolios#about'
  get 'contact', to: 'portfolios#contact'
  get '/:id', to: 'portfolios#show', as: 'portfolio_show'
  get '/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'

  root to: 'portfolios#index'
end

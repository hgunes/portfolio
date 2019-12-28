Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolio_res, except: [:show]
  get 'portfolio/:id', to: 'portfolio_res#show', as: 'portfolio_show'
  root 'pages#home'
  get 'about', to:'pages#about'
  get 'contact', to: 'pages#contact'

  get 'angular-items', to: 'portfolio_res#angular'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end

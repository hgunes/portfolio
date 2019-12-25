Rails.application.routes.draw do
  resources :portfolio_res, except: [:show]
  get 'portfolio/:id', to: 'portfolio_res#show', as: 'portfolio_show'
  root 'pages#home'
  get 'about', to:'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end

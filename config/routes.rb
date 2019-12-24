Rails.application.routes.draw do
  resources :portfolio_res
  root 'pages#home'
  get 'about', to:'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs


end

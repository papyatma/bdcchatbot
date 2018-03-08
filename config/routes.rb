Rails.application.routes.draw do
  devise_for :users
  resources :seances
  resources :activites
  resources :directions
  resources :structures
  resources :posts
  resources :places

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

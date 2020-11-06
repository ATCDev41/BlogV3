Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :articles

root 'pages#home'
get 'Blog', to: 'pages#blog'
get 'about', to: 'pages#about'

get 'connexion', to: 'users#new'
resources :users, except: [:new]

end

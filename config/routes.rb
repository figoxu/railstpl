Rails.application.routes.draw do
  resources :users
  get 'login/new'
  root :to => 'login#new'
  post 'login/login'


  get 'vusers/default'
  get "vusers.json", to:'vusers#list'
  # For details on the DSL
  # available within this file, see http://guides.rubyonrails.org/routing.html
end

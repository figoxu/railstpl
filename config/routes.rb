Rails.application.routes.draw do
  resources :users
  get 'login/new'
  root :to => 'login#new'
  post 'login/login'


  get 'vusers/default'
  get "vusers/list/:pgno", to: 'vusers#list'
  delete 'vusers/:id', to: "vusers#destroy"
  post "vusers", to: "vusers#create"
  put "vusers", to: "vusers#modify"
  # For details on the DSL
  # available within this file, see http://guides.rubyonrails.org/routing.html
end

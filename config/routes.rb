Rails.application.routes.draw do
  get 'login/new'
  root :to => 'login#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
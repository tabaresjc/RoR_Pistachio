Pistachio::Application.routes.draw do
  devise_for :users
  root :to => 'visitors#new'
end

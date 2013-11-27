Pistachio::Application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "signin", :to => "devise/sessions#new"
    get "signup", :to => "devise/registrations#new"
  end

  root :to => "pages#home"
  get "pages/home"
  get "pages/help"
  get "pages/about" 
end

Pistachio::Application.routes.draw do

  devise_for :users, :skip => [:sessions], :path_names => { :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'signup' }
  as :user do
    get 'signin' => 'devise/sessions#new', :as => :new_user_session
    post 'signin' => 'devise/sessions#create', :as => :user_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  authenticated :user do
    root :to => 'pages#index', :as => :authenticated_root
  end
  root :to => redirect('/signin')  
end

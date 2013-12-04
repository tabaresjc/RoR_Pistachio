Pistachio::Application.routes.draw do
  # root :to => "pages#home"
  
  devise_for :users, :skip => [:sessions], :path_names => { :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'signup' }
  as :user do
    get 'signin' => 'devise/sessions#new', :as => :new_user_session
    post 'signin' => 'devise/sessions#create', :as => :user_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  authenticated :user do
    root :to => 'pages#home', :as => :authenticated_root_path
  end
  root :to => redirect('/signin')  
end

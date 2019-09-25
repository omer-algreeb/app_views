Rails.application.routes.draw do
  resources :admins
  
  root 'attachment#index'
  
  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :attachment do 
    member do
      get :delete
    end
  end

  resources :type_attachment do 
    member do
      get :delete
    end
  end

  resources :type_message do 
    member do
      get :delete
    end
  end

  resources :jop do 
    member do
      get :delete
    end
  end

  resources :message do 
    member do
      get :delete
    end
  end

  resources :user do 
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

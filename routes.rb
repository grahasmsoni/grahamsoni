Grahamsoni::Application.routes.draw do
  get "home/index"

  resources :posts
    root :to =>'home#index'
    get 'controller/:id/See Messages' , :to =>'posts#show'
    get 'controller/:id/Write Messages' , :to=>'posts#new'
  end

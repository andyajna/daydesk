Daydesk::Application.routes.draw do
 

  resources :suppliers do
  	resources :services
  end

  root :to => "suppliers#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
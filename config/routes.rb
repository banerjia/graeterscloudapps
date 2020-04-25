Rails.application.routes.draw do

  namespace :manage do
    resources :retailers, param: :uri_string
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :manage do
    get "welcome/index", to: "welcome#index"
  end
  

  root "manage/retailers#index"
  
end

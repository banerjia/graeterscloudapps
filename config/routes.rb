Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :manage do
    get "welcome/index", to: "welcome#index"
  end
  

  root "manage/welcome#index"
end

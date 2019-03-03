Rails.application.routes.draw do

  resources :recipes do
    resources :reviews, only: [:new, :create]
  end
  resources :user
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

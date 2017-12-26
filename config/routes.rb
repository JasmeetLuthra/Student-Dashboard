Rails.application.routes.draw do
  resources :courses
  resources :students
 root 'home#index'


get '/act' => 'home#act'
get '/search' => 'home#search'
post '/searchh' => 'students#searchh'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :courses
  resources :students
 root 'home#index'


get '/act' => 'home#act'
get '/search' => 'home#search'
get '/searchh' => 'students#searchh'
get '/searchc' => 'students#searchc'
get '/searchp' => 'students#searchp'
get '/aj' => 'home#aj'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

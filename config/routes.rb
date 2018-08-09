Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :entries

  get '/show:id/' => 'entries#show'

  get 'edit:id' => 'edit#show'

end

Rails.application.routes.draw do
  resources :sections
  root to: 'static#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

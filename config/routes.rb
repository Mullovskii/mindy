Rails.application.routes.draw do
  resources :favors
  resources :fields
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :users
  resources :layouts
  resources :sections
  root to: 'static#hello'

  get 'static/choose_favors', to: 'static#choose_favors'

 #  devise_scope :user do
 #  	delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
	# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

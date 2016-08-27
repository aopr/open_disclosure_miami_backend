Rails.application.routes.draw do
  root 'monies#index'
  resources :monies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

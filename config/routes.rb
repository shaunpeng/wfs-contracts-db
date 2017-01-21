Rails.application.routes.draw do
  
  root 'contracts#home'
  get 'contracts/index', to: 'contracts#index'
  
  resources :lines
  
  resources :cfiles
  
  resources :contracts do
    member do
      put :set_status_inactive
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  
  resources :whiskeys do
    resource :comments, only: [:create]
  end

  resources :users
end

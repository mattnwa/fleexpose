Rails.application.routes.draw do
  root to: 'vehicles#index'
  resources :vehicles, only: [:index, :create] do
    get 'search', on: :collection
  end
end

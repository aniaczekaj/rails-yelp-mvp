Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [ :new, :create, :index ]
  end

  namespace :admin do
    resources :restaurants, only: [:delete, :update] do
      resources :reviews, only: [:delete, :update]
    end
  end

  root to: "restaurants#index"
end

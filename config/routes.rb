Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets, except: :index do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

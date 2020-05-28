Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
    sessions: 'users/sessions' }
    
  root to: 'tweets#index'
  resources :tweets, except: :index do
    collection do
      get 'search'
    end
  end

  resources :posts, except: :index
  
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

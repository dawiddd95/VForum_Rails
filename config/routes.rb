Rails.application.routes.draw do
  resources :channels
  resources :discussions do
    resources :replies
  end

  root 'discussions#index'

  get 'search', to: 'discussions#search'

  devise_for :users, controllers: {registrations: 'registrations'}
end

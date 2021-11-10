Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'}
  resources :products do
    get :search, on: :collection
  end
  get 'products/index'
  post 'products/create'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

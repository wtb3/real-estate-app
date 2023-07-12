Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/show'
  get 'homes/new'
  get 'homes/create'
  Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/show'
  get 'homes/new'
  get 'homes/create'
    resources :homes, only: [:index, :show, :new, :create]
  end
end

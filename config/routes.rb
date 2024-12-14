Rails.application.routes.draw do
  resources :recyclers do
    resources :deliveries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  resources :materials
  resources :material_types
  devise_for :users, controllers: 
  { sessions: 'users/sessions', registrations: 'users/registrations' }
  get "pages/index"
  devise_scope :user do
    get 'users/sign_up', to: redirect('pages/index') # Redirige a la página principal si el usuario está autenticado
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "pages#index"
end


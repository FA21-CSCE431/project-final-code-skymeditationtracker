Rails.application.routes.draw do
#  namespace :api do
#    namespace :v1 do
#      get 'recipes/index'
#      post 'recipes/create'
#      get '/show/:id', to: 'recipes#show'
#      delete '/destroy/:id', to: 'recipes#destroy'
#    end

  root to: 'homepage#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
#  root 'homepage#index'
#  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :passports, only: %i[index create show update]
        resources :guineas, only: %i[index create show update delete]
      end
    end
  end
end

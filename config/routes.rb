Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :passports, only: %i[index create show update]
      end
    end
  end
end

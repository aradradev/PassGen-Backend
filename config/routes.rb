Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :passports, only: %i[index create show update]
        resources :guineas, only: %i[index create show update delete]
        resources :embassies do
          member do
            post 'book_appointment', action: :book_appointment
          end
          resources :embassy_appointments, only: [:index, :create, :show, :update]
        end
      end
    end
  end
end

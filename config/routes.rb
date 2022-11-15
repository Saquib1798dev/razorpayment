Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :payments do
        post 'create_order'
        post 'verify_payment_state'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

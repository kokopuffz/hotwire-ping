Rails.application.routes.draw do
  get 'hotwire/turbo_frame_test', as: :timestamp
  get 'hotwire/increment', as: :increment
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'hotwire#index'
end

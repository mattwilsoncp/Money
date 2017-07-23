Rails.application.routes.draw do
  resources :register_upload_entries
  resources :register_uploads
  resources :register_entries
  resources :categories
  resources :registers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

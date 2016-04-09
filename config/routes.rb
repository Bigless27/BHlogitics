Rails.application.routes.draw do
  resources :messages, only: [:new, :create]

  get 'contact_form/new'

  get 'contact_form/create'

  resources :contact_form
  root :to => "welcome#index"
end

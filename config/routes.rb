Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/usermailer", :to => "usermailer#new"
  post "/usermailer", :to => "usermailer#create"
  post "send_mail", :to => "usermailer#send_mail"
end

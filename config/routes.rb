Rails.application.routes.draw do
  root 'index#index'
  match "/" => "index#index", via: :post
  match "login" => "index#login", via: :get
end

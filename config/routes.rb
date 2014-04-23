Rails.application.routes.draw do
  root 'pages#home'

  get '/home', to: "pages#home"
  get '/team', to: "pages#team"
  get '/contact', to: "pages#contact"

  get '/events', to: "events#index"
end

Rails.application.routes.draw do
  root 'pages#home'

  get '/home', to: "pages#home"
  get '/team', to: "pages#team"
  get '/contact', to: "pages#contact"

  scope 'events' do
    get '/',    to: "events#index", as: :events
    get '/:id', to: "events#show",  as: :event
  end
end

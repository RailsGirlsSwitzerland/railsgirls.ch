Rails.application.routes.draw do

  # we don't want www
  constraints(:host => /^www\./) do
    get "(*x)" => redirect { |params, request|
      URI.parse(request.url).tap {|url| url.host.sub!('www.', '') }.to_s
    }
  end

  root 'pages#home'

  get '/home', to: "pages#home"
  get '/team', to: "pages#team"
  get '/afterwards', to: "pages#afterwards"
  get '/contact', to: "pages#contact"

  scope 'events' do
    get '/',    to: "events#index", as: :events
    get '/:id', to: "events#show",  as: :event
  end
end

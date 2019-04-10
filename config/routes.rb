Rails.application.routes.draw do
  #for ticketscontroller
  post '/tickets' => "tickets#create"
  put '/tickets/:id' => "tickets#update"
  delete '/tickets/:id' => "tickets#destroy"
  get '/tickets/:id' => "tickets#show"
  get '/tickets' => "tickets#index"

  #for EventVenuesController
  post '/event_venues' => "event_venues#create"
  put '/event_venues/:id' => "event_venues#update"
  delete '/event_venues/:id' => "event_venues#destroy"
  get '/event_venues/:id' => "event_venues#show"

  #for EventsController
  post '/events' => "events#create"
  put '/events/:id' => "events#update"
  delete '/events/:id' => "events#destroy"
  get '/events/:id' => "events#show"

  #for UsersController
  post '/users' => "users#create"
  put '/users/:id' => "users#update"
  delete '/users/:id' => "users#destroy"
  get '/users/:id' => "users#show"

  resources :ticket_types do
  resources :tickets
  end

  post '/ticket_types/:ticket_type_id/tickets' => "tickets#create"
  put '/ticket_types/:ticket_type_id/tickets/:id' => "tickets#update"
  delete '/ticket_types/:ticket_type_id/tickets/:id' => "tickets#destroy"
  get '/ticket_types/:ticket_type_id/tickets/:id' => "tickets#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  #for ticketscontroller
  post '/tickets' => "tickets#create"
  put '/tickets/:id' => "tickets#update"
  delete '/tickets/:id' => "tickets#destroy"

  #for EventVenuesController
  post '/event_venues' => "event_venues#create"
  put '/event_venues/:id' => "event_venues#update"
  delete '/event_venues/:id' => "event_venues#destroy"

  #for EventsController
  post '/events' => "events#create"
  put '/events/:id' => "events#update"
  delete '/events/:id' => "events#destroy"

  #for UsersController
  post '/users' => "users#create"
  put '/users/:id' => "users#update"
  delete '/users/:id' => "users#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

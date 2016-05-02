Rails.application.routes.draw do
  get  '/',         to: 'events#new',    as: 'events'
  post '/',         to: 'events#create', as: 'events_create'
  get '/event/:id', to: 'events#show',   as: 'event'
end

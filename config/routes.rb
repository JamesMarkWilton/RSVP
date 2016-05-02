Rails.application.routes.draw do
  get  '/',                    to: 'events#new',       as: 'events'
  post '/',                    to: 'events#create',    as: 'event_create'
  get  '/event/:id',           to: 'attendees#new',    as: 'event'
  post '/attendees/:event_id', to: 'attendees#create', as: 'attendees_create'
end

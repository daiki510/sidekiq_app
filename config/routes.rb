Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'

  mount Sidekiq::Web, at: "/sidekiq"
  root "home#show"
  resource :redis, only: %i[show]
end

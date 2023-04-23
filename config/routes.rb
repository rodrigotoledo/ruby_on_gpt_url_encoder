Rails.application.routes.draw do
  root 'url#index'
  get '/:code', to: 'url#redirect_to_original_url', as: :redirect_to_original_url
  get '/url/:code', to: 'url#show', as: :url
end

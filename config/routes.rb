Rails.application.routes.draw do
  root 'file#index'
  get '/file', to: 'file#index'
  post '/import', to: 'file#import'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

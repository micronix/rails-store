Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/products', to: 'products#index'
    get '/products/new', to: 'products#new'
    post '/products', to: 'products#create'
    get '/products/:id/edit', to: 'products#edit'
    put '/products/:id', to: 'products#update'
    get '/products/:id', to: 'products#show'
    
    get '/categories', to: 'categories#index'
    get '/categories/new', to: 'categories#new'
    post '/categories', to: 'categories#create'
    get '/categories/:id/edit', to: 'categories#edit'
    put '/categories/:id', to: 'categories#update'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :products, :categories
    root 'products#index'
    
    post '/products/:id/review', to: 'products#create_review'
end

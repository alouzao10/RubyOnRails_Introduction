Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Set the main index page of the site
root 'posts#index', as: "home"

# Include paths to other views
get "about" => 'pages#about', as: "about"

# Claim a resouce of mutliple elements that share the same Controller  
resources :posts
end

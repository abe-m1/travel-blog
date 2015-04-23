Rails.application.routes.draw do


        get "blogs/" => "blogs#index"

      get "blogs/new" => "blogs#new", as: :new_blog  

      post "blogs/" =>  "blogs#create"

      get "blogs/:id" => "blogs#show", as: :blog




      get  "blogs/:id/edit" => "blogs#edit", as: :edit_blog    
         #we need to add edit at the end

      patch "blogs/:id"   => "blogs#update"

      delete "blogs/:id" =>  "blogs#destroy"

      post  "blogs/:id/comments" => "comments#create", as: :blog_comments


     

      get "users" => "users#index"

    get "signup" => "users#new"

    post "users" => "users#create" 

    #routes for logging in/out

    get "login" => "sessions#new"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"

    get '/contact' => 'blogs#contact'

    get '/map' => 'blogs#map'

    get '/photos' => 'blogs#photos'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

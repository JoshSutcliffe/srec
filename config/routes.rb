Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'pages#index'

  get '/show' => 'pages#search'
  get '/show/:id' => 'pages#show'
  get '/apply/:id' => 'pages#apply'
  post '/apply/:id' => 'pages#application'
  get '/create_job' => 'pages#create_job'
  post '/create_job' => 'pages#post_job'

  # SESSIONS
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/sign_up/candidate' => 'session#sign_up_candidate'
  post '/sign_up/candidate' => 'session#create_sign_up'
  get '/sign_up/client' => 'session#sign_up_client'
  post '/sign_up/client' => 'session#client_sign_up'

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

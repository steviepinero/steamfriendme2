Rails.application.routes.draw do
  get "games/matchpage" => "games#matchpage"
  get "games/profile"   => "games#profile"
  resources :games
  resources :users
  get "users/index"
  root 'users#index'



  get 'auth/steam', as: 'steam_login'
  get 'auth/:provide/callback' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  get 'game/display_recent_games'

  get 'game/find_match'

  get 'sessions/create'



  # We don't have any ratings yet - steve
  # post '/rate' => 'rater#create', :as => 'rate'
  # get 'ratings/rate_user'
  # get 'user/rate'

  # get 'ratings/your_rating'
  #
  #
  # get 'user/rate'
  post 'auth/steam/callback' => 'users#auth_callback'
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

Migrareg::Application.routes.draw do
  resources :sale_day_totals

  resources :sale_days

  resources :validations

  resources :campaign_people

  resources :campaign_managements

  resources :campaigns

  resources :citations

  resources :teleoperations

  resources :temporal_managements

  resources :day_managements

  resources :auxiliar_managements

  resources :offer_customers

  resources :managements

  resources :current_packages

  resources :businesses

  resources :ranks

  resources :number_calls

  resources :management_statuses

  resources :offers

  resources :wallets

  resources :phones

  resources :type_phones

  resources :addresses

  resources :type_addresses

  resources :customers

  resources :type_customers

  resources :geolocs

  root :to => "portals#index"
  
  match "logout" => "user_sessions#destroy"
  
  resources :user_sessions

  resources :portals

  resources :users

  resources :profiles

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

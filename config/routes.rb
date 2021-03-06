Rails.application.routes.draw do
  # devise_for :users

  get 'dashboard/home'
  get 'dashboard/user'
  get 'dashboard/tickets'

  get 'dashboard/pending'
  get 'dashboard/assigned'
  get 'dashboard/resolved'
  get 'dashboard/open'
  get 'dashboard/settings'
  get 'dashboard/help'
  get 'dashboard/level1'
  get 'dashboard/level2'
  get 'dashboard/level3'

  # get 'dashboard/edit/:id' => 'dashboard#edit', as: :dashboard_edit
  # get 'dashboard/show/:id' => 'dashboard#edit', as: :dashboard_show

    resources :dashboard

  devise_for :users, :controllers => { registrations: 'registrations'}

  root 'welcome#index'
  resources :tickets

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end

  devise_scope :user do
    delete "/logout" => "devise/sessions#destroy"
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):


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

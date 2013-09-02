Gersebkor::Application.routes.draw do

  get 'bejelentkezes' => "new_user_ses"
  get 'bemutatkozas' => "static_pages#about"
  get 'projektek' => "static_pages#projects"

  devise_scope :user do
    get "/belepes" => "devise/sessions#new"
    get "/regisztracio" => "devise/registrations#new"
    get "/kilepes" => "devise/sessions#destroy"
  end
  
  devise_for :users
  resources :document_types
  resources :posts, path: "tartalom"
  resources :documents, path: "dokumentumok"
  resources :photos, path: "kepek"

  root 'posts#index'
  get "*gibberish", :to => "static_pages#routing_error"

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

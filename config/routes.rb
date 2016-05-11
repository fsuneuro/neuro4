Rails.application.routes.draw do
  get "events/eventhub"
  get "events/rushton"
  get "events/outreach"
  get "events/smith"
  get "events/social"
  get "events/colloquium"
  get "events/rushton_reg"
  get "events/rushton2016"
  get "events/rushton2015"
  get "events/rushton2014"
  get "events/rushton2013"
  get "events/rushton2012"
  get "events/rushton2011"
  get "events/rushtonf2009"
  get "events/rushtons2009"

  get "resource/resourcehub"
  get "resource/resresource"
  get "resource/links"
  get "resource/articles"
  get "resource/cores"

  get "about/abouthub"
  get "about/history"
  get "about/affiliates"
  get "about/focus"
  get "about/contact"
  
  get "students/studenthub"
  get "students/tribeta"
  get "students/nusa"
  get "students/ngsa"
  get "students/nsresources"
  get "students/outreach"
  get "students/bee"
  get "students/awareness"
  get "students/fair"
  get "students/constitution"
  get "students/bylaws"
  get "students/gsac"

  get "prospect/about"
  get "prospect/admission"
  get "prospect/finaid"
  get "prospect/curriculum"
  get "prospect/prospecthub"
  get "prospect/faq"

  
  root to: 'homes#show'

  resources :people, only: [:index, :show] do
      resources :pubs, except: [:create, :new, :edit, :destroy]
  end



  resources :articles
  resources :pubs, except: [:create, :new, :edit, :destroy]


  namespace :sekret do
    resources :people do
      resources :pubs
    end
  end

  get     '/sessions/new' => 'sessions#new',      as: :new_sessions
  post    '/sessions'     => 'sessions#create',   as: :session 
  delete  '/sessions'     => 'sessions#destroy'

  #last one!!!
  get ':position/:user_name', to: 'people#show', as: 'friendly_person'



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

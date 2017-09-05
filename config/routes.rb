Rails.application.routes.draw do

  get "events/eventhub"
  get "events/rushton"
  get "events/outreach"
  get "events/smith"
  get "events/social"
  get "events/colloquium"
  get "events/rushton_reg"
  get "events/rushton2017"
  get "events/rushton2016"
  get "events/rushton2015"
  get "events/rushton2014"
  get "events/rushton2013"
  get "events/rushton2012"
  get "events/rushton2011"
  get "events/rushtonf2009"
  get "events/rushtons2009"
  get 'events/', to: redirect('/events/eventhub')

  get "resource/resourcehub"
  get "resource/resresource"
  get "resource/links"
  get "resource/articles"
  get "resource/cores"
  get 'resource/', to: redirect('/resource/resourcehub')

  get "about/abouthub"
  get "about/history"
  get "about/affiliates"
  get "about/focus"
  get "about/contact"
  get "about/why"
  get 'about/', to: redirect('/about/abouthub')
  
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
  get "students/contout"
  get "students/gmg"
  get "students/newgrad"
  get 'students/', to: redirect('/students/studenthub')

  get "prospect/about"
  get "prospect/admission"
  get "prospect/finaid"
  get "prospect/curriculum"
  get "prospect/prospecthub"
  get "prospect/faq"
  get 'prospect/', to: redirect('/prospect/prospecthub')

  get "support/supporthub"
  get "support/itsupport"
  get "support/graphics"
  get "support/email"
  get "support/illustration"
  get "support/posters"
  get "support/webservices"
  get "support/newneuro"
  get 'support/', to: redirect('/support/supporthub')
  

  resources :tickets, only: [:index, :new, :create]
  
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
    resources :tickets
    get "adminhub"
    get '', to: redirect('/sekret/adminhub')
    
  end

  

  get     '/sessions/new' => 'sessions#new',      as: :new_sessions
  post    '/sessions'     => 'sessions#create',   as: :session 
  delete  '/sessions'     => 'sessions#destroy'

  #last one!!!
  get ':position/:user_name', to: 'people#show', as: 'friendly_person'


end
  
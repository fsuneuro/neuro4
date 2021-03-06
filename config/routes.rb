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

  get "research/researchhub"
  get "research/chemsens"
  get "research/humanneuro"
  get "research/molecgen"
  get "research/neurobio"
  get "research/neuroendo"
  get 'research/', to: redirect('/research/researchhub') 

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
  get "students/sgrhub"
  get "students/sughub"
  get "students/resopp"
  get "students/studgroups"
  get "students/smedia"

  get "prospect/prospecthub"
  get 'prospect/', to: redirect('/prospect/prospecthub')

  get "support/supporthub"
  get "support/itsupport"
  get "support/graphics"
  get "support/email"
  get "support/illustration"
  get "support/posters"
  get "support/webservices"
  get "support/newneuro"
  get "support/newgrad"
  get "support/newfac"
  get "support/sunshine"
  get 'support/', to: redirect('/support/supporthub')

  get "ug/ughub"
  get "ug/admission"
  get "ug/advising"
  get "ug/courses"
  get "ug/majors"
  get "ug/pathways"
  get "ug/studentorg"
  get "ug/whatis"
  get 'ug/', to: redirect('/ug/ughub')

  get "gr/grhub"
  get 'gr/', to: redirect('/gr/grhub')
  get "gr/about"
  get "gr/admission"
  get "gr/curriculum"
  get "gr/faq"
  get "gr/finaid"
  get "gr/grants"
  

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
    resources :disgrads
  end

  

  get     '/sessions/new' => 'sessions#new',      as: :new_sessions
  post    '/sessions'     => 'sessions#create',   as: :session 
  delete  '/sessions'     => 'sessions#destroy'

  #last one!!!
  get ':position/:user_name', to: 'people#show', as: 'friendly_person'


end
  
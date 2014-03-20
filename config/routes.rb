Rachelpritzlaff::Application.routes.draw do
  root 'pages#index'

  get 'collaborators' => 'pages#collaborators', as: :collaborators
  get 'repertory' => 'pages#repertory', as: :repertory
  get 'upcoming' => 'pages#upcoming', as: :upcoming
  get 'subscribe-donate' => 'pages#subscribe', as: :subscribe
  get 'contact' => 'contacts#new', as: :contact
  resources :contacts, only: [:create]
end

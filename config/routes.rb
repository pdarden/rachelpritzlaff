Rachelpritzlaff::Application.routes.draw do
  root 'pages#index'

  get 'bio' => 'pages#bio', as: :bio
  get 'repertory' => 'pages#repertory', as: :repertory
  get 'up-coming' => 'pages#up_coming', as: :up_coming
  get 'subscribe-donate' => 'pages#subscribe', as: :subscribe
  get 'contact' => 'contacts#new', as: :contact
  resources :contacts, only: [:create]
end

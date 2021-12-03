Rails.application.routes.draw do
  get 'favorites/update'
  resources :notes
  resources :songs
  root 'home#home'

  get 'songs', to:'home#songs'
  get 'about', to:'home#about'
  get 'contact', to:'home#contact'
  get 'favorites', to:'home#favorites'
  post 'request_contact', to:'home#request_contact'

end

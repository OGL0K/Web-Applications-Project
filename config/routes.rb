Rails.application.routes.draw do
  resources :songs
  root 'home#home'

  get 'songs', to:'home#songs'
  get 'about', to:'home#about'
  get 'contact', to:'home#contact'
  post 'request_contact', to:'home#request_contact'

end

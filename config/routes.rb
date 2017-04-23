Rails.application.routes.draw do
  devise_for :admins, :controllers => { registrations: 'registrations' }  
  mount Ckeditor::Engine => '/ckeditor'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  root 'posts#index'
  resources :posts
end

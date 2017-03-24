Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  root 'static_pages#about'
  resources :posts
end

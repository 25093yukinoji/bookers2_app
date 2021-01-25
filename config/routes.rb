Rails.application.routes.draw do
 devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
 root to: 'homes#top'
 get 'homes/about' => 'homes#about'
 resources :books, only: [:new, :create, :index, :show, :destroy]
end

Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
  end

  root to: 'pages#index'
end

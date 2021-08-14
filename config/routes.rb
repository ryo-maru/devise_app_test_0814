Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'blogs#index'
end

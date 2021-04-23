Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    member do
      get 'like'
      get 'repost'
    end
  end
end

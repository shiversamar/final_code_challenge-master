Rails.application.routes.draw do

  devise_for :users, :controllers => {registrations: 'registrations'}

    resources :posts do
      resources :comments
    end

    root 'posts#index'

    post  '/posts' => 'posts#create'

    patch	'/posts/:id' => 'posts#update'

end

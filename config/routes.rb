Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
        resources :menu_items do
          delete 'delete_favorites'
        end
        resources :favorites
        resources :reviews
        resources :users
        resources :restaurants
    end

  end

  get '*path', to: 'pages#index', via: :all

end

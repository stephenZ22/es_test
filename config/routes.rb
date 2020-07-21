Rails.application.routes.draw do

  root 'posts#index'

  resources :posts do
    collection do
      post :import_post_data
      get  :import_post_data
    end
  end
end

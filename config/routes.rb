Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :personality_patterns do
    collection { post :import }
  end

  resources :result_contents do
    collection { post :import }
  end

  resources :quiz_questions do
    collection { post :import }
  end

end

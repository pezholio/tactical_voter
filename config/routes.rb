Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "constituencies#index"

  resources :constituencies, only: [:index] do
    collection do
      get "search", to: "search"
    end
  end
end

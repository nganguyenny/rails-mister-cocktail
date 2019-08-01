Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, shallow: true
    resources :ingredients, shallow: true
  end
end

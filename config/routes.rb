Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, shallow: true
    resources :ingredients, shallow: true
  end
end

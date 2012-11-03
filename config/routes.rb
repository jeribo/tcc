AppPloutos::Application.routes.draw do
  resources :people do
    resources :placements
  end

  #resources :placements

  devise_for :users

  get "welcome/index", as: "welcome"
  root to: 'welcome#index'
end


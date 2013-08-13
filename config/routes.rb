MinexReports::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :campaign_results

  resources :campaign_members do
    collection do
      get :geodata
    end
  end

  root to: 'campaign_members#index'

end

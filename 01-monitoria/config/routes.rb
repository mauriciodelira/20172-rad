Rails.application.routes.draw do
  get 'home/index'

  get '/monitoria' => 'home#index' # get '[nome_rota]' => '[controller#método]'

  root 'home#index'

  resources :subscriptions
  resources :students #, only: [:index, :create] # permite APENAS (only) as actions /index, /create e /new
  resources :semesters #, except: [:index, :create] # permite tudo, EXCETO (except) as actions /index e /create
  resources :disciplines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

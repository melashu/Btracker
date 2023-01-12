Rails.application.routes.draw do
  get 'transactions/index'
  get 'transactions/:id', to: "transactions#show", as: "show_transaction"
  get 'btransaction/index'
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: "users/registrations",
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  root to: "splashs#index"
   resources :users do
    resources :catagories do
      resources :btransactions
    end
  end

end

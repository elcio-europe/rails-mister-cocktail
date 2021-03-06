Rails.application.routes.draw do

  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [:new, :create, :destroy]
  end

  # delete '/doses/:id', to: "doses#destroy", as: 'delete_dose'

  root to: "cocktails#index"
end

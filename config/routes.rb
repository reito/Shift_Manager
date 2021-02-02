Rails.application.routes.draw do
    # get "static_pages/index"  => "static_pages#index"
    root                           "static_pages#index"
    # get "wishes/new" => "wishes#new"
    resources :wishes
    resources :incomes
    resources :loans
end

Rails.application.routes.draw do
    get 'login/index'

    resources :user

    root 'login#index'
end

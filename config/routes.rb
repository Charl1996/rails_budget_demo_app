Rails.application.routes.draw do
  devise_for :users

  root :to => "pages#home"

  scope "pages" do
    get "/login", to: "pages#login"
    get "/register", to: "pages#register"
  end

  scope "/user" do
    post "/register", to: "users#register"
    post "/login", to: "users#login"
    get "/dashboard", to: "users#dashboard"
  end 
  
  resources :users do
    get ":user_id/budgets/new", to: "budgets#new"
  end

  resources :entry_items
  resources :items
  resources :budgets
end

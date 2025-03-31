Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "/user/sign_up", to: "devise/registrations#new"
    get "/user/sign_in", to: "devise/sessions#new"
    get "/users/sign_out", to: "devise/sessions#destroy"
  end

  # Root path should load index.html.erb
  root "home#index"
end

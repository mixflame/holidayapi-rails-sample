Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "holiday#index"
  get "/holidays", to: "holiday#holidays"
  get "/languages", to: "holiday#languages"
  get "/workday", to: "holiday#workday"
end

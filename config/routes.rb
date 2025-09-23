Rails.application.routes.draw do
  # CRUD completo para movies
  resources :movies

  # rota raiz (opcional)
  root "movies#index"

  # outras rotas que você já tinha
  get "up" => "rails/health#show", as: :rails_health_check
end

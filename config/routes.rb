Rails.application.routes.draw do
  # CRUD completo para movies
  resources :movies

  # rota raiz (opcional)
  root "movies#index"
end

class ApplicationController < ActionController::Base
  # Protege contra ataques CSRF (Cross-Site Request Forgery)
  protect_from_forgery with: :exception

  # Você pode adicionar filtros ou métodos comuns a todos os controllers aqui
  # Por exemplo, autenticação de usuário:
  # before_action :authenticate_user!

  # Métodos de helper disponíveis nas views
  # helper_method :current_user, :logged_in?
end

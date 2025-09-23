class ApplicationController < ActionController::Base
  # Proteção CSRF
  protect_from_forgery with: :exception
end

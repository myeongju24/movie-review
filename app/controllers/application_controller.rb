class ApplicationController < ActionController::Base
  private
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :favorite_movie, :favorite_genre_id])
end
end

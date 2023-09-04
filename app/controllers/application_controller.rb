class ApplicationController < ActionController::Base
  helper_method :current_usar

  private

  def current_usar
    @current_usar ||= Usar.find_by(id: session[:usar_id]) if session[:usar_id]

  end
end

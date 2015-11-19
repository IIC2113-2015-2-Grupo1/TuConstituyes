# ApplicationController
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :load_sources, :load_regions

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def load_sources
    @all_sources = Source.all unless @all_sources
  end

  def load_regions
    @all_regions |= [
      { name: 'I - Tarapacá', id: 2 },
      { name: 'II - Antofagasta', id: 3 },
      { name: 'III - Atacama', id: 4 },
      { name: 'IV - Coquimbo', id: 5 },
      { name: 'V - Valparaíso', id: 6 },
      { name: 'RM - Metropolitana de Santiago', id: 7 },
      { name: 'VI - OHiggins', id: 8 },
      { name: 'VII - Maule', id: 9 },
      { name: 'VIII - Bío-Bío', id: 10 },
      { name: 'IX - La Araucanía', id: 11 },
      { name: 'X - Los Lagos', id: 13 },
      { name: 'XI - Aysén', id: 14 },
      { name: 'XII - Magallanes', id: 15 },
      { name: 'XIV - Los Ríos', id: 12 },
      { name: 'XV - Arica y Parinacota', id: 1 }
    ]
  end
end

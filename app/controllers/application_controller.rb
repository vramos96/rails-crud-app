class ApplicationController < ActionController::Base
    before_action :authenticate_persona!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido_materno, 
        :apellido_paterno, :rfc, :nombre_empresa])
    end
end

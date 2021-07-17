class AdminController < ApplicationController
    skip_before_action :authenticate_persona!, only: [:verificarEmpresa]
    
    def index

    end

    #Regresa true si es posible crear usuario con nombre de empresa única
    def verificarEmpresa
        nombreEmpresa = params[:nombre_empresa]
        respond_to do |format|
            if nombreEmpresa.present?
                validateEmpresa = !Persona.find_by(nombre_empresa: nombreEmpresa).present?
            else
                validateEmpresa = false
            end
            format.json { render json: validateEmpresa, status: :ok, location: verificar_empresa_path }
        end
    end
end

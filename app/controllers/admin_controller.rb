class AdminController < ApplicationController
    skip_before_action :authenticate_persona!, only: [:verificarEmpresa, :index]
    
    def index
        if !persona_signed_in?
            redirect_to new_persona_session_path
        end
    end

    #Regresa true si es posible crear usuario con nombre de empresa única
    def verificarEmpresa
        nombreEmpresa = params[:nombre_empresa]
        email = params[:email]
        rfc = params[:rfc]
        respond_to do |format|
            if nombreEmpresa.present? && rfc.present?
                validateEmpresa = !Persona.find_by(nombre_empresa: nombreEmpresa, rfc: rfc).present?
            else
                validateEmpresa = nil
            end
            format.json { render json: validateEmpresa, status: :ok, location: verificar_empresa_path }
        end
    end

    #Regresa true si es posible crear sucursal con nombre único
    def verificarSucursal
        nombreSucursal = params[:nombre_sucursal]
        respond_to do |format|
            if nombreSucursal.present?
                validateSucursal = !Sucursal.find_by(nombre: nombreSucursal).present?
            else
                validateSucursal = nil
            end
            format.json { render json: validateSucursal, status: :ok, location: verificar_sucursal_path }
        end
    end
end

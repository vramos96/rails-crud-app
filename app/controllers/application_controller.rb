class ApplicationController < ActionController::Base
    before_action :authenticate_persona!
    def index
    end
end

Rails.application.routes.draw do
  devise_for :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'admin#index'
  post '/verificarEmpresa', to: 'admin#verificarEmpresa', as: 'verificar_empresa'
end

Rails.application.routes.draw do
  resources :empleados
  resources :sucursals
  devise_for :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sucursals#index'
  post '/verificarEmpresa', to: 'admin#verificarEmpresa', as: 'verificar_empresa'
  post '/verificarSucursal', to: 'admin#verificarSucursal', as: 'verificar_sucursal'
end

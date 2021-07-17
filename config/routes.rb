Rails.application.routes.draw do
  resources :sucursals
  devise_for :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sucursals#index'
  post '/verificarEmpresa', to: 'admin#verificarEmpresa', as: 'verificar_empresa'
end

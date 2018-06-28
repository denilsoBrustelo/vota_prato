Rails.application.routes.draw do
  resources :comentarios
  resources :qualificacoes
  resources :clientes
  resources :restaurantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   match 'ola' => 'ola_mundo#index', via: 'get'
   #match 'rack', :to => proc{|env| [200, {"Content-Type" => "text/html"},  ["App Rack numa rota Rails"]]}
   
end

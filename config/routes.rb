Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  post '/send_mail/', to: 'static_pages#send_mail', as: :send_mail
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :homes
  post '/delete_chats', controller: 'homes', action: 'delete_chats'
end

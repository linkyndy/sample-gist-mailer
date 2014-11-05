Rails.application.routes.draw do
  root 'mail#new'

  post 'confirm' => 'mail#confirm'
  post 'send' => 'mail#send'
end

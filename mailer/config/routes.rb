Rails.application.routes.draw do
  root 'gist_mail#new'

  post 'confirm' => 'gist_mail#confirm'
  post 'send' => 'gist_mail#send'
end

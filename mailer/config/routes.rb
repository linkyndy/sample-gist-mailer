Rails.application.routes.draw do
  root 'gist_mail#new'

  post '/confirm' => 'gist_mail#confirm'
  post '/send_mail' => 'gist_mail#send_mail'
end

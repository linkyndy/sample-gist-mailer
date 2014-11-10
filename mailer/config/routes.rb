Rails.application.routes.draw do
  root 'gist_mail#new'

  post '/' => 'gist_mail#create'
  get '/confirm' => 'gist_mail#confirm'
  post '/send_mail' => 'gist_mail#send_mail'

  get '/load_cities' => 'gist_mail#load_cities'
end

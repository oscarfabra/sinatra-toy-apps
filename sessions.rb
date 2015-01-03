require 'sinatra'

configure do
  # Once enabled, the session object can be used to store and retrieve values.
  # A cookie named rack.session is stored in the client side.
  enable :sessions
end

before do
  content_type :txt
end

get '/set' do
  session[:foo] = Time.now
  "Session value set."
end

get '/fetch' do
  "Session value: #{session[:foo]}"
end

get '/logout' do
  # Destroys the session data.
  session.clear
  redirect '/fetch'
end
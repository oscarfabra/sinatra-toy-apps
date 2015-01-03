require 'sinatra'

before do
  content_type :txt
end

# get '/' do
#   # Inform consumers that the content should be cached for one hour
#   headers "Cache-Control" => "public, must-revalidate, max-age=3600",
#   "Expires" => Time.at(Time.now.to_i + (60 * 60)).to_s
#   # (Refreshing the page won't update the time displayed).
#   "This page rendered at #{Time.now}."
# end

# Defines cache control and content expiration.
get '/cache' do
  expires 3600, :public, :must_revalidate
  "This page rendered at #{Time.now}."
end

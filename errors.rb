require 'sinatra'

# before do
#   content_type :txt
# end

# # Since there are no routes, any requests will be handled by not_found.
# not_found do
#   "Whoops! You requested a route that wasn't available."
# end

# # Gracefully handling 500 errors
# before do
#   content_type :txt
# end

# configure do
#   set :show_exceptions, false
# end

# get '/div_by_zero' do
#   0 / 0
#   "You won't see me."
# end

# # This block is called when an error is found.
# error do
#   "Why it doesn't work?"
# end

# Configuration

configure do
  # register a new MIME type as :plain
  mime_type :plain, 'text/plain'
end

before '/plain-text' do
  # Sets the content type that will be used for the response.
  content_type :plain
end

get '/html' do
  '<h1>You should see HTML rendered.</h1>'
end

get '/plain-text' do
  '<h1>You should see plain text rendered.</h1>'
end
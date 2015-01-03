require 'sinatra'

#get '/:name' do
  # assumes a URL in the form /some_name?foo=XYZ
#  "You asked for #{params[:name]} as well as #{params[:foo]}"
#end

# # Wildcard (*). Anything passed is stored in params[:splat]
# get '/*' do
#   "You passed in #{params[:splat]}"
# end

# # First sufficient match wins (the above).
# get '/specific' do
#   "You'll never, ever see me."
# end

# get %r{/(sp|gr)eedy} do
#   "You got caught in the greedy route!"
# end

# get '/speedy' do
#   "No one calls me :("
# end

# get '/greedy' do
#   "No one calls me either!"
# end

# halting a request
# get '/halt' do
#   'You will not see this output.'
#   halt 500
# end

# passing a request
# before do
#   content_type :txt
# end

# get %r{/(sp|gr)eedy} do
#   pass if request.path =~ /\/speedy/
#   "You got caught in the greedy route!"
# end

# get '/speedy' do
#   "You must have passed to me!"
# end


# redirect a request with optional status codes
# get '/redirect' do
#   redirect 'http://www.google.com'
# end

# get '/redirect2' do
#   # Provide status code to the redirect method
#   redirect 'http://www.google.com', 301
# end

# sinatra application with a route conflict
get '/public.html' do
  # the resource at public/public.html is delivered instead of this content.
  # the 'public' folder is omitted
  # Can swap the location with
  # set :public_folder, File.dirname(__FILE__) + '/your_custom_location'
  'This is delivered via the route.'
end
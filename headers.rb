require 'sinatra'

# before do
#   content_type :txt
# end

# get '/' do
#   headers "X-Custom-Value" => "This is a custom HTTP header."
#   'Custom header set'
# end

# get '/multiple' do
#   headers "X-Custom-Value" => "foo", "X-Custom-Value-2" => "bar"
#   'Multiple custom headers set'
# end

# The HTTP specification defines a number of standard headers.
# The generally-accepted convention is to prefix custom or user-defined
# headers with "X-".

# There are several non-standard headers that are in common use: 
# X-Forwarded-For, X-Requested-With, and X-Powered-By

# # Accessing request data
# before do
#   content_type :txt
# end

# get '/' do
#   # Iterates over the values in the @env variable.
#   request.env.map { |e| e.to_s + "\n" }
# end

# Enumerating the methods on the request object
before do
  content_type :txt
end

get '/' do
  # Iterates over the methods of the request object
  request.methods.map { |m| m.to_s + "\n" }
end

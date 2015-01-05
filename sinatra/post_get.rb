require 'sinatra/base'

# We need to send both GET and POST requests to a particular URL such that
# the same block of code handles both verbs.
module Sinatra
  module PostGet
    def post_get(route, &block)
      get(route, &block)
      post(route, &block)
    end
  end

  # now we just need to register it via Sinatra::Base
  register PostGet
end
# MyApp = proc do |env|
#   [200, {'Content-Type' => 'text/plain'}, ['ok']]
# end

# class MyMiddleware
#   def initialize(app)
#     @app = app
#   end

#   def call(env)
#     if env['PATH_INFO'] == '/'
#       @app.call(env)
#     else
#       [404, {'Content-Type' => 'text/plain'}, ['not ok']]
#     end
#   end
# end

# # this is the actual configuration
# use MyMiddleware
# run MyApp

require 'sinatra/base'

#Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file }

require './helpers/application_helper'
require './controllers/application_controller'
require './controllers/example_controller'

map('/example') { run ExampleController }
map('/') { run ApplicationController }
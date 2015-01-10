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

# -----------------------------------------------
# Architecture test.

# require 'sinatra/base'

#Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file }

# require './helpers/application_helper'
# require './controllers/application_controller'
# require './controllers/example_controller'

# map('/example') { run ExampleController }
# map('/') { run ApplicationController }

# require 'sinatra/base'

# app = Sinatra.new do
#   get('/') { 'Hello World!' }
# end

# run app

# -----------------------------------------------
# Inheritance test.

# require 'sinatra/base'

# general_app = Sinatra.new { enable :logging }
# custom_app = Sinatra.new(general_app) do 
#   get('/') { 'Hello World!' }
# end

# run custom_app

# -----------------------------------------------
# Dynamic subclassing test.

# require 'sinatra/base'

# words = %w[foo bar bazz]

# words.each do |word|
#   # Generate a new application for each word.
#   map("/#{word}") { run Sinatra.new { get('/') { word } } }
# end

# # Generates a list of the possible links.
# map '/' do
#   app = Sinatra.new do
#     get '/' do
#       list = words.map do |word|
#         "<a href='/#{word}'>#{word}</a>"
#       end
#       list.join("<br>")
#     end
#   end

#   run app
# end

# -----------------------------------------------
# Chaining classes test.

require 'sinatra/base'

Router = Sinatra.new

# Automatically picking up subclasses as middleware.
class ApplicationController < Sinatra::Base
  def self.inherited(sublass)
    super
    Router.use(sublass)
  end

  enable :logging
end

class ExampleController < ApplicationController
  get('/example') { "Example!" }
end

# Works with dynamically generated applications, too.
Sinatra.new ApplicationController do
  get '/' do
    "See the <a href='/example'>example</a>."
  end
end

Router.run!
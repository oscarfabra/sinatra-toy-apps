require 'sinatra'
require './sinatra/link_helper'

# Creating instance variables for use in a view
get '/link_helper_test' do
  # @name = 'Random User'
  erb :link_helper_test
end
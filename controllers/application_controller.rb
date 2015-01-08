class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # Set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  # Don't enable logging when running tests
  configure :production, :development do
    enable :logging
  end

  # Will be used to display 404 error pages.
  not_found do
    title 'Not Found!'
    erb :not_found
  end
end
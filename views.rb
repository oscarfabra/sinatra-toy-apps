require 'sinatra'

# sinatra looks by default for index.erb in the 'views' folder
# As with static resources, one can change the location of views:
# set :views, File.dirname(__FILE__) + '/your_custom_location'
get '/index' do
  # Must always be a symbol
  erb :index
end

# looks for files called profile.erb and help.erb in '/views/user'
# get '/:user/profile' do
#   erb '/user/profile'.to_sym
# end

# get '/:user/help' do
#   erb :'/user/help'
# end

# Creating instance variables for use in a view
# get '/home' do
#   @name = 'Random User'
#   erb :home
# end

# Iterating over a loop in a view
get '/home' do
  @users = ['Sally', 'Jerry', 'Rocko']
  erb :home
end

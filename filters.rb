require 'sinatra'

before do  
  @before_value = 'foo'
end

get '/' do
  "before_value has been set to #{before_value}."
end

after do
  puts "After filter called to perform some task."
end

# before and after filters are identical in form to the route methods;
# specifically, you can provide a URL to a filter and Sinatra will match it.
# before('/index') { ... } # executed only before the '/index' route

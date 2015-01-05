require 'sinatra'

# link helper inside a block.
helpers do
  def link(name)
    case name
    when :about then '/about'
    when :index then '/index'
    else "/page/#{name}"
    end
  end
end

get '/' do
  erb :index
end

get '/index.html' do
  redirect link(:index)
end

__END__

# inline template
@@index
<a href="<%= link :about %>">About</a><br/>
<a href="<%= link :index %>">Index</a><br/>
<a href="<%= link :random %>">Random</a><br/>
require 'sinatra'

# Inspecting self in different scopes
outer_self = self

get '/' do
  content_type :txt
  "outer self: #{outer_self}, inner self: #{self}"
end


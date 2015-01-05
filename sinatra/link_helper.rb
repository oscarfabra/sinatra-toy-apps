require 'sinatra/base'

# A helper method that generates hyperlinks.
module Sinatra
  module LinkHelper
    def link(name)
      case name
      when :about then '/about'
      when :index then '/index'
      else "/page/#{name}"
      end
    end
  end

  helpers LinkHelper
end
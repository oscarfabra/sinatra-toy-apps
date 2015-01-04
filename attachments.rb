require 'sinatra'

before do
  content_type :txt
end

get '/attachment' do
  attachment 'test.txt'
  "Here's what will be sent downstream, in an attachment called 'test.txt'."
end

# Attachment should be shown in a 'Content-Disposition' header.
# It is downloaded when browsed.
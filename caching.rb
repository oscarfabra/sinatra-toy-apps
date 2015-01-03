require 'sinatra'

# before do
#   content_type :txt
# end

# get '/' do
#   # Inform consumers that the content should be cached for one hour
#   headers "Cache-Control" => "public, must-revalidate, max-age=3600",
#   "Expires" => Time.at(Time.now.to_i + (60 * 60)).to_s
#   # (Refreshing the page won't update the time displayed).
#   "This page rendered at #{Time.now}."
# end

# # Defines cache control and content expiration.
# get '/cache' do
#   expires 600, :public, :must_revalidate
#   "This page rendered at #{Time.now}."
# end

# Generating an etag
require 'uuid'

before do
  content_type :txt
  # generates a globally-unique identifier
  @guid = UUID.new.generate
end

get '/etag' do
  etag @guid, :weak
  "This resource has an ETag value of #{@guid}."
end

# Normal ETags are considered to be strongly-validating; two identical ETags
# can be considered to refer to byte-for-byte identical resources.
# Weak ETags are used to denote that resources can be considered identical or 
# equivalent even if they are not byte-for-byte identical.
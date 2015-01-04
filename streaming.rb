require 'sinatra'

before do
  content_type :txt
end

# connections = []

# # Keeping the Connection Open.
# get '/consume' do
#   stream(:keep_open) do |out|
#     # store connection for later on
#     connections << out

#     # remove connection when closed properly
#     out.callback { connections.delete(out) }

#     # remove connection when closed due to an error
#     out.errback do 
#       logger.warn 'We just lost a connection!'
#       connections.delete(out)
#     end
#   end
# end

# # Sends given :message to all clients.
# get '/broadcast/:message' do
#   connections.each do |out|
#     out << "#{Time.now} -> #{params[:message]}" << "\n"
#   end

#   "Sent #{params[:message]} to all clients."
# end

# Finite streaming.
get '/har-har' do
  stream do |out|
    out << "Wanna hear a joke about potassium?\n"
    sleep 1.5  # Waits 1.5 seconds
    out << "K.\n"
    sleep 1.5
    out << "I also have one about sodium!\n"
    sleep 1.5
    out << "Na.\n"
  end
end

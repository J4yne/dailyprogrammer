# [2016-05-23] Challenge #268 [Easy] Network and Cards: Part 1, The network
# https://redd.it/4knivr

# References:
# http://www.tutorialspoint.com/ruby/ruby_socket_programming.htm


# SERVER

require 'socket'

server = TCPServer.new 1201
loop do
  Thread.start(server.accept) do |client|
    client.puts "Hello !"
    client.puts "Time is #{Time.now}"
    client.close
  end
end




# CLIENT

require 'socket'      # Sockets are in standard library

hostname = 'localhost'
port = 2000

s = TCPSocket.open(hostname, port)

while line = s.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done



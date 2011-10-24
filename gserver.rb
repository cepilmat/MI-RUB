require 'gserver'

class TimeServer < GServer
  def serve(io)
    io.puts("Hello to gserver")
		io.puts "..............................."
		io.puts IO.readlines('/var/log/mintsystem.log')[-25..-1]
		io.puts "..............................."
  end
end

server = TimeServer.new(1234)  
server.start
server.join
server.stop

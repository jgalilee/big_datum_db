require 'socket'

class BigDatumDBClient
  attr_accessor :server, :host, :port

  def initialize(host, port)
    @host = host
    @port = port
  end

  def get
    setup_socket
    @server.puts('get')
    @server.gets.chomp
  ensure
    close_socket
  end

  def set(value)
    setup_socket
    @server.puts("set #{value}")
    @server.gets.chomp
  ensure
    close_socket
  end

  private

  def setup_socket
    @server = TCPSocket.new(host, port)
  end

  def close_socket
    @server.close
  end
end

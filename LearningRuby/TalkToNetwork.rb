class TalkToNetwork
  require 'socket'
  #  client = TCPSocket.open('127.0.0.1', 'www')
  client = TCPSocket.open('127.0.0.1', '8080')
  client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0) # 0 means standard packet
  puts client.readlines
  client.close
end
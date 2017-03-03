require 'gserver'

class LogServer < GServer
  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_end_of_log_file
  end
  private

  def get_end_of_log_file
    File.open("C:/rubyWorkspace/LearningRuby/files/system.log") do |log|
      log.seek(-500, IO::SEEK_END) # back up 500 characters from end
      log.gets # ignore partial line
      log.read # and return rest
    end
  end
end

server = LogServer.new
server.start.join
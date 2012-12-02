require 'stomp'

class Stomper::Client

  @@connection = nil

  def self.publish
    connection
  end

  protected

  def self.connection
    @@connection ||= Stomp::Connection.new(Stomper.config)
  end

end

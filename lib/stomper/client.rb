require 'stomp'

class Stomper::Client

  @@connection = nil

  def self.publish(queue, message)
    connection.publish(queue, message)
  end

  protected

  def self.connection
    @@connection ||= Stomp::Connection.new(Stomper.config)
  end

end

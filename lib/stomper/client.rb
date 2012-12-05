require 'stomp'

class Stomper::Client

  @@connection = nil

  def self.publish(queue, message)
    connection.publish(queue, message)
  end

  protected

  def self.connection
    unless @@connection && @@connection.open?
      @@connection = Stomp::Connection.new(Stomper.get_config)
    end
    @@connection
  end

end

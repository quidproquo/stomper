require 'spec_helper'

describe Stomper::Client do

  let(:connection) { double(:connection) }
  subject { Stomper::Client }

  before {
    Stomp::Connection.stub(:new).and_return(connection)
    connection.stub(:open?).and_return(true)
    connection.stub(:closed?).and_return(false)
  }

  describe :class_methods do
    describe :connection do
      subject { Stomper::Client.connection }
      it { should_not be_nil }

      context 'connection is closed' do
        let(:new_connection) { double(:new_connection) }
        before {
          Stomper::Client.connection
          connection.stub(:open?).and_return(false)
          connection.stub(:closed?).and_return(true)
          Stomp::Connection.stub(:new).and_return(new_connection)
        }
        it { should_not be_nil }
        it { should == new_connection }
      end
    end

    describe :publish do
      let(:queue) { '/queue/test' }
      let(:message) { 'Test message' }
      before {
        connection.should_receive(:publish).with(queue, message)
      }
      it 'should publish the message' do
        subject.publish(queue, message)
      end

    end

  end

end


require 'spec_helper'

describe Stomper::Client do

  let(:connection) { double(:connection) }
  subject { Stomper::Client }

  before {
    Stomp::Connection.stub(:new).and_return(connection)
  }

  describe :class_methods do
    describe :connection do
      subject { Stomper::Client.connection }
      it { should_not be_nil }
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


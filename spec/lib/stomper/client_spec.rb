require 'spec_helper'

describe Stomper::Client do

  it { should be }

  describe :class_methods do

    describe :connection do
      let(:connection) { double(:connection) }
      subject { Stomper::Client.connection }
      before {
        Stomp::Connection.stub(:new).and_return(connection)
      }
      it { should_not be_nil }
    end

  end

end


require 'spec_helper'

describe Stomper do

  describe :class_methods do

    describe :config do
      subject { Stomper.config }
      it { should_not be_nil }
    end # config

    describe :get_config do
      subject { Stomper.get_config }
      it { should_not be_nil }
      it 'should have array of hosts whose keys are all symbols' do
        subject[:hosts].each { |host|
          host.keys.each { |key|
            key.should be_instance_of(Symbol)
          }
        }
      end
    end # get_config

  end # class_methods

end

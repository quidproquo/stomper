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
    end # get_config

  end # class_methods

end

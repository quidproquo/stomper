require 'spec_helper'

describe Stomper do

  describe :class_methods do

    describe :config do

      it 'should load the config.yml' do
        subject.config.should_not be_nil
      end

    end # config

  end # class_methods

end

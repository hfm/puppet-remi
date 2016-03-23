require 'spec_helper'
describe 'remi' do

  context 'with default values for all parameters' do
    it { should contain_class('remi') }
  end
end

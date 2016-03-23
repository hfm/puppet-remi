require 'spec_helper'
describe 'remi' do

  context 'with default values for all parameters' do
    it { should compile }
    it { should compile.with_all_deps }
    it { should contain_class('remi') }
  end
end

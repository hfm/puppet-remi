require 'spec_helper'
describe 'remi' do
  on_supported_os.each do |os, facts|
    context "with default values for all parameters on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile }
      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('remi') }
    end
  end
end

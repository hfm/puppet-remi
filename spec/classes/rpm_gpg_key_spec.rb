require 'spec_helper'
describe 'remi::rpm_gpg_key' do
  context 'with default values for all parameters' do
    it { is_expected.to compile }
    it { is_expected.to compile.with_all_deps }
    it { is_expected.to contain_class('remi::rpm_gpg_key') }

    it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi').with_ensure('present') }
    it { is_expected.to contain_exec('import-remi').with_command('rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi') }
  end

  context 'with absent' do
    let(:params) do
      {
        ensure: 'absent',
      }
    end

    it { is_expected.to contain_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi').with_ensure('absent') }
  end
end

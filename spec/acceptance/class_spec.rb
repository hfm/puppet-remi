require 'spec_helper_acceptance'

describe 'remi class' do
  let(:manifest) do
    <<-EOS
    require 'remi'

    package { 'php':
      ensure          => installed,
      install_options => ['--enablerepo=remi-php71'],
    }
    EOS
  end

  it 'should work without errors' do
    result = apply_manifest(manifest, :acceptable_exit_codes => [0, 2], :catch_failures => true)
    expect(result.exit_code).not_to eq 4
    expect(result.exit_code).not_to eq 6
  end

  it 'should run a second time without changes' do
    result = apply_manifest(manifest)
    expect(result.exit_code).to eq 0
  end

  describe file('/etc/pki/rpm-gpg/RPM-GPG-KEY-remi') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 644 }
  end

  %w(
    remi
    remi-php55
    remi-php56
    remi-test
    remi-debuginfo
    remi-php55-debuginfo
    remi-php56-debuginfo
    remi-php56-debuginfo
    remi-test-debuginfo
    remi-safe
    remi-php70
    remi-php70-debuginfo
    remi-php70-test
    remi-php70-test-debuginfo
    remi-php71
    remi-php71-debuginfo
    remi-php71-test
    remi-php71-test-debuginfo
  ).each do |repo|
    describe yumrepo(repo) do
      it { should exist }
      it { should_not be_enabled }
    end
  end

  describe package('php') do
    it { should be_installed }
  end

  describe command('php -v') do
    its(:stdout) { should match /^PHP 7.1.\d+/ }
  end
end

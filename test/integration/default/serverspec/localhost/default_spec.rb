require 'spec_helper'

describe 'docker' do

  describe package('docker-ce') do
    it { should be_installed }
  end

end

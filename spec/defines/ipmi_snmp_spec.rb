require 'spec_helper'

describe 'ipmi::snmp', type: :define do
  let(:facts) do
    {
      operatingsystem: 'Ubuntu',
      osfamily: 'debian',
      operatingsystemmajrelease: '18.04',
    }
  end

  let(:title) { 'example' }

  describe 'when deploying with no params' do
    it { is_expected.to contain_exec('ipmi_set_snmp_1') }
  end

  describe 'when deploying with all params' do
    let(:params) do
      {
        snmp: 'secret',
        channel: 2,
      }
    end

    it { is_expected.to contain_exec('ipmi_set_snmp_2') }
  end
end

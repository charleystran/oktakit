require 'spec_helper'

describe Oktakit::Client::AuthorizationServers do
  AUTH_SERVER_ID = 'aus1bptuzqo48Ut942p7'
  POLICY_ID = '00p8ugd7c2vILTBa62p7'

  describe '#list_authorization_servers' do
    it 'returns fetched application servers' do
      VCR.use_cassette 'get_application_servers' do
        resp, = client.list_authorization_servers
        expect(resp).to be_a(Array)
      end
    end
  end

  describe '#list_authorization_server_policies' do
    it 'returns fetched application server policies' do
      VCR.use_cassette 'get_application_server policies' do
        resp, = client.list_authorization_server_policies(AUTH_SERVER_ID)
        expect(resp.first[:name]).to eq('default')
      end
    end
  end

  describe '#update_authorization_server_policy' do
    it 'returns fetched application servers' do
      policy = {
        conditions: {
          clients: {
            include: [

            ]
          }
        }
      }
      VCR.use_cassette 'update_application_server policies' do
        resp, = client.update_authorization_server_policy(AUTH_SERVER_ID, POLICY_ID)
        puts resp.inspect
        expect(resp.first[:name]).to eq('default')
      end
    end
  end
end

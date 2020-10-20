module Oktakit
  class Client
    module AuthorizationServers

      def list_authorization_server_policies(id, options = {})
        get("/authorizationServers/#{id}/policies", options)
      end

      def update_authorization_server_policy(id, policy_id, policy, options = {})
        put("/authorizationServers/#{id}/policies/#{policy_id}", policy)
      end
    end
  end
end

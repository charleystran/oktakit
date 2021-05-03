module Oktakit
  class Client
    module AuthorizationServers

      #List Authorization Servers
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] All responses return the list of application server policies.
      # @see https://developer.okta.com/docs/reference/api/authorization-servers/#list
      # @example
      #   Oktakit.list_authorization_servers
      def list_authorization_servers(options = {})
        get("/authorizationServers", options)
      end

      #List Authorization Server Policies
      #
      # @param id [string] The Application ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] All responses return the list of application server policies.
      # @see https://developer.okta.com/docs/reference/api/authorization-servers/#list-policies
      # @example
      #   Oktakit.list_authorization_server_policies

      def list_authorization_server_policies(id, options = {})
        get("/authorizationServers/#{id}/policies", options)
      end

      # Update Authorization Server Policys
      #
      # @param id [string] The Application ID
      # @param Policy [hash] Data hash containg policy options
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] All responses return the created Application.
      # @see https://developer.okta.com/docs/reference/api/authorization-servers/#update-a-policy
      # @example
      #   Oktakit.update_authorization_server_policy
      def update_authorization_server_policy(id, policy_id, policy, options = {})
        put("/authorizationServers/#{id}/policies/#{policy_id}", policy)
      end
    end
  end
end

defmodule Google.Cloud.Networksecurity.V1.NetworkSecurity.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.networksecurity.v1.NetworkSecurity",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListAuthorizationPolicies,
      Google.Cloud.Networksecurity.V1.ListAuthorizationPoliciesRequest,
      Google.Cloud.Networksecurity.V1.ListAuthorizationPoliciesResponse

  rpc :GetAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1.GetAuthorizationPolicyRequest,
      Google.Cloud.Networksecurity.V1.AuthorizationPolicy

  rpc :CreateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1.CreateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1.UpdateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1.DeleteAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListServerTlsPolicies,
      Google.Cloud.Networksecurity.V1.ListServerTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1.ListServerTlsPoliciesResponse

  rpc :GetServerTlsPolicy,
      Google.Cloud.Networksecurity.V1.GetServerTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1.ServerTlsPolicy

  rpc :CreateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1.CreateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1.UpdateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteServerTlsPolicy,
      Google.Cloud.Networksecurity.V1.DeleteServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListClientTlsPolicies,
      Google.Cloud.Networksecurity.V1.ListClientTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1.ListClientTlsPoliciesResponse

  rpc :GetClientTlsPolicy,
      Google.Cloud.Networksecurity.V1.GetClientTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1.ClientTlsPolicy

  rpc :CreateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1.CreateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1.UpdateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientTlsPolicy,
      Google.Cloud.Networksecurity.V1.DeleteClientTlsPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1.NetworkSecurity.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1.NetworkSecurity.Service
end
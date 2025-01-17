defmodule Google.Cloud.Networksecurity.V1beta1.NetworkSecurity.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1beta1.NetworkSecurity",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListAuthorizationPolicies,
      Google.Cloud.Networksecurity.V1beta1.ListAuthorizationPoliciesRequest,
      Google.Cloud.Networksecurity.V1beta1.ListAuthorizationPoliciesResponse

  rpc :GetAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1beta1.GetAuthorizationPolicyRequest,
      Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy

  rpc :CreateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1beta1.CreateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1beta1.UpdateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1beta1.DeleteAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListServerTlsPolicies,
      Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesResponse

  rpc :GetServerTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.GetServerTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy

  rpc :CreateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.CreateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.UpdateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteServerTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.DeleteServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListClientTlsPolicies,
      Google.Cloud.Networksecurity.V1beta1.ListClientTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1beta1.ListClientTlsPoliciesResponse

  rpc :GetClientTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.GetClientTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy

  rpc :CreateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.CreateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.UpdateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientTlsPolicy,
      Google.Cloud.Networksecurity.V1beta1.DeleteClientTlsPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1beta1.NetworkSecurity.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1beta1.NetworkSecurity.Service
end

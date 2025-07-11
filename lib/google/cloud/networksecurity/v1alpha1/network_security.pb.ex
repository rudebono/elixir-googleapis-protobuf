defmodule Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.NetworkSecurity",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListClientTlsPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListClientTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListClientTlsPoliciesResponse

  rpc :GetClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetClientTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.ClientTlsPolicy

  rpc :CreateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteClientTlsPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Service
end

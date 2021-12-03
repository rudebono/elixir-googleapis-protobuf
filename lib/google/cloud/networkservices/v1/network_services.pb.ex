defmodule Google.Cloud.Networkservices.V1.NetworkServices.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.networkservices.v1.NetworkServices"

  rpc :ListEndpointPolicies,
      Google.Cloud.Networkservices.V1.ListEndpointPoliciesRequest,
      Google.Cloud.Networkservices.V1.ListEndpointPoliciesResponse

  rpc :GetEndpointPolicy,
      Google.Cloud.Networkservices.V1.GetEndpointPolicyRequest,
      Google.Cloud.Networkservices.V1.EndpointPolicy

  rpc :CreateEndpointPolicy,
      Google.Cloud.Networkservices.V1.CreateEndpointPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateEndpointPolicy,
      Google.Cloud.Networkservices.V1.UpdateEndpointPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteEndpointPolicy,
      Google.Cloud.Networkservices.V1.DeleteEndpointPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkservices.V1.NetworkServices.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkservices.V1.NetworkServices.Service
end

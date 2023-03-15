defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.containeranalysis.v1beta1.ContainerAnalysisV1Beta1",
    protoc_gen_elixir_version: "0.11.0"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service
end
defmodule Google.Cloud.Iap.V1beta1.IdentityAwareProxyAdminV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.iap.v1beta1.IdentityAwareProxyAdminV1Beta1",
    protoc_gen_elixir_version: "0.12.0"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Iap.V1beta1.IdentityAwareProxyAdminV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Iap.V1beta1.IdentityAwareProxyAdminV1Beta1.Service
end
defmodule Google.Devtools.Containeranalysis.V1beta1.GeneratePackagesSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Containeranalysis.V1beta1.PackagesSummaryResponse.LicensesSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :license, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Devtools.Containeranalysis.V1beta1.PackagesSummaryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_url, 1, type: :string, json_name: "resourceUrl"

  field :licenses_summary, 2,
    repeated: true,
    type: Google.Devtools.Containeranalysis.V1beta1.PackagesSummaryResponse.LicensesSummary,
    json_name: "licensesSummary"
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.containeranalysis.v1beta1.ContainerAnalysisV1Beta1",
    protoc_gen_elixir_version: "0.12.0"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GeneratePackagesSummary,
      Google.Devtools.Containeranalysis.V1beta1.GeneratePackagesSummaryRequest,
      Google.Devtools.Containeranalysis.V1beta1.PackagesSummaryResponse
end

defmodule Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Devtools.Containeranalysis.V1beta1.ContainerAnalysisV1Beta1.Service
end
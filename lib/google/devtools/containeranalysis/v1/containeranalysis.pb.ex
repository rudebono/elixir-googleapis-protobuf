defmodule Google.Devtools.Containeranalysis.V1.ExportSBOMRequest.CloudStorageLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Devtools.Containeranalysis.V1.ExportSBOMRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :name, 1, type: :string, deprecated: false

  field :cloud_storage_location, 2,
    type: Google.Devtools.Containeranalysis.V1.ExportSBOMRequest.CloudStorageLocation,
    json_name: "cloudStorageLocation",
    oneof: 0,
    deprecated: false
end

defmodule Google.Devtools.Containeranalysis.V1.ExportSBOMResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :discovery_occurrence, 1, type: :string, json_name: "discoveryOccurrence"
end

defmodule Google.Devtools.Containeranalysis.V1.GetVulnerabilityOccurrencesSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
end

defmodule Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary.FixableTotalByDigest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_uri, 1, type: :string, json_name: "resourceUri"
  field :severity, 2, type: Grafeas.V1.Severity, enum: true
  field :fixable_count, 3, type: :int64, json_name: "fixableCount"
  field :total_count, 4, type: :int64, json_name: "totalCount"
end

defmodule Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :counts, 1,
    repeated: true,
    type:
      Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary.FixableTotalByDigest
end

defmodule Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.containeranalysis.v1.ContainerAnalysis",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetVulnerabilityOccurrencesSummary,
      Google.Devtools.Containeranalysis.V1.GetVulnerabilityOccurrencesSummaryRequest,
      Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary

  rpc :ExportSBOM,
      Google.Devtools.Containeranalysis.V1.ExportSBOMRequest,
      Google.Devtools.Containeranalysis.V1.ExportSBOMResponse
end

defmodule Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Service
end

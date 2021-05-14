defmodule Google.Devtools.Containeranalysis.V1.GetVulnerabilityOccurrencesSummaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :filter]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
end

defmodule Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary.FixableTotalByDigest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_uri: String.t(),
          severity: Grafeas.V1.Severity.t(),
          fixable_count: integer,
          total_count: integer
        }

  defstruct [:resource_uri, :severity, :fixable_count, :total_count]

  field :resource_uri, 1, type: :string
  field :severity, 2, type: Grafeas.V1.Severity, enum: true
  field :fixable_count, 3, type: :int64
  field :total_count, 4, type: :int64
end

defmodule Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          counts: [
            Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary.FixableTotalByDigest.t()
          ]
        }

  defstruct [:counts]

  field :counts, 1,
    repeated: true,
    type:
      Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary.FixableTotalByDigest
end

defmodule Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.containeranalysis.v1.ContainerAnalysis"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetVulnerabilityOccurrencesSummary,
      Google.Devtools.Containeranalysis.V1.GetVulnerabilityOccurrencesSummaryRequest,
      Google.Devtools.Containeranalysis.V1.VulnerabilityOccurrencesSummary
end

defmodule Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Containeranalysis.V1.ContainerAnalysis.Service
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t()
        }

  defstruct [:full_resource_name]

  field :full_resource_name, 1, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: String.t()
        }

  defstruct [:identity]

  field :identity, 1, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [String.t()],
          permissions: [String.t()]
        }

  defstruct [:roles, :permissions]

  field :roles, 1, repeated: true, type: :string
  field :permissions, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          resource_selector:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector.t() | nil,
          identity_selector:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector.t() | nil,
          access_selector:
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector.t() | nil
        }

  defstruct [:parent, :resource_selector, :identity_selector, :access_selector]

  field :parent, 1, type: :string

  field :resource_selector, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector

  field :identity_selector, 3,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector

  field :access_selector, 4,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector
end

defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest.Options do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expand_groups: boolean,
          expand_roles: boolean,
          expand_resources: boolean,
          output_resource_edges: boolean,
          output_group_edges: boolean,
          analyze_service_account_impersonation: boolean,
          execution_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :expand_groups,
    :expand_roles,
    :expand_resources,
    :output_resource_edges,
    :output_group_edges,
    :analyze_service_account_impersonation,
    :execution_timeout
  ]

  field :expand_groups, 1, type: :bool
  field :expand_roles, 2, type: :bool
  field :expand_resources, 3, type: :bool
  field :output_resource_edges, 4, type: :bool
  field :output_group_edges, 5, type: :bool
  field :analyze_service_account_impersonation, 6, type: :bool
  field :execution_timeout, 7, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          options: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest.Options.t() | nil
        }

  defstruct [:analysis_query, :options]

  field :analysis_query, 1, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery
  field :options, 2, type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest.Options
end

defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          analysis_results: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.t()],
          fully_explored: boolean
        }

  defstruct [:analysis_query, :analysis_results, :fully_explored]

  field :analysis_query, 1, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery

  field :analysis_results, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult

  field :fully_explored, 3, type: :bool
end

defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_analysis:
            Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis.t() | nil,
          service_account_impersonation_analysis: [
            Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis.t()
          ],
          fully_explored: boolean,
          non_critical_errors: [
            Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState.t()
          ]
        }

  defstruct [
    :main_analysis,
    :service_account_impersonation_analysis,
    :fully_explored,
    :non_critical_errors
  ]

  field :main_analysis, 1,
    type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis

  field :service_account_impersonation_analysis, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis

  field :fully_explored, 3, type: :bool

  field :non_critical_errors, 4,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination,
    oneof: 0
end

defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expand_groups: boolean,
          expand_roles: boolean,
          expand_resources: boolean,
          output_resource_edges: boolean,
          output_group_edges: boolean,
          analyze_service_account_impersonation: boolean
        }

  defstruct [
    :expand_groups,
    :expand_roles,
    :expand_resources,
    :output_resource_edges,
    :output_group_edges,
    :analyze_service_account_impersonation
  ]

  field :expand_groups, 1, type: :bool
  field :expand_roles, 2, type: :bool
  field :expand_resources, 3, type: :bool
  field :output_resource_edges, 4, type: :bool
  field :output_group_edges, 5, type: :bool
  field :analyze_service_account_impersonation, 6, type: :bool
end

defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          options: Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options.t() | nil,
          output_config: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.t() | nil
        }

  defstruct [:analysis_query, :options, :output_config]

  field :analysis_query, 1, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery
  field :options, 2, type: Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options
  field :output_config, 3, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig
end

defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.t() | nil
        }

  defstruct [:output_config]

  field :output_config, 1, type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig
end

defmodule Google.Cloud.Asset.V1p4beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.asset.v1p4beta1.AssetService"

  rpc :AnalyzeIamPolicy,
      Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest,
      Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse

  rpc :ExportIamPolicyAnalysis,
      Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Asset.V1p4beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p4beta1.AssetService.Service
end

defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t()
        }

  defstruct full_resource_name: ""

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName", deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: String.t()
        }

  defstruct identity: ""

  field :identity, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          roles: [String.t()],
          permissions: [String.t()]
        }

  defstruct roles: [],
            permissions: []

  field :roles, 1, repeated: true, type: :string, deprecated: false
  field :permissions, 2, repeated: true, type: :string, deprecated: false
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

  defstruct parent: "",
            resource_selector: nil,
            identity_selector: nil,
            access_selector: nil

  field :parent, 1, type: :string, deprecated: false

  field :resource_selector, 2,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector,
    json_name: "resourceSelector",
    deprecated: false

  field :identity_selector, 3,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector,
    json_name: "identitySelector",
    deprecated: false

  field :access_selector, 4,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector,
    json_name: "accessSelector",
    deprecated: false
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

  defstruct expand_groups: false,
            expand_roles: false,
            expand_resources: false,
            output_resource_edges: false,
            output_group_edges: false,
            analyze_service_account_impersonation: false,
            execution_timeout: nil

  field :expand_groups, 1, type: :bool, json_name: "expandGroups", deprecated: false
  field :expand_roles, 2, type: :bool, json_name: "expandRoles", deprecated: false
  field :expand_resources, 3, type: :bool, json_name: "expandResources", deprecated: false

  field :output_resource_edges, 4,
    type: :bool,
    json_name: "outputResourceEdges",
    deprecated: false

  field :output_group_edges, 5, type: :bool, json_name: "outputGroupEdges", deprecated: false

  field :analyze_service_account_impersonation, 6,
    type: :bool,
    json_name: "analyzeServiceAccountImpersonation",
    deprecated: false

  field :execution_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "executionTimeout",
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          options: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest.Options.t() | nil
        }

  defstruct analysis_query: nil,
            options: nil

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery",
    deprecated: false

  field :options, 2,
    type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyRequest.Options,
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          analysis_results: [Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.t()],
          fully_explored: boolean
        }

  defstruct analysis_query: nil,
            analysis_results: [],
            fully_explored: false

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery"

  field :analysis_results, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult,
    json_name: "analysisResults"

  field :fully_explored, 3, type: :bool, json_name: "fullyExplored"
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

  defstruct main_analysis: nil,
            service_account_impersonation_analysis: [],
            fully_explored: false,
            non_critical_errors: []

  field :main_analysis, 1,
    type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "mainAnalysis"

  field :service_account_impersonation_analysis, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.AnalyzeIamPolicyResponse.IamPolicyAnalysis,
    json_name: "serviceAccountImpersonationAnalysis"

  field :fully_explored, 3, type: :bool, json_name: "fullyExplored"

  field :non_critical_errors, 4,
    repeated: true,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisResult.AnalysisState,
    json_name: "nonCriticalErrors"
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination,
             Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination,
    json_name: "gcsDestination",
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

  defstruct expand_groups: false,
            expand_roles: false,
            expand_resources: false,
            output_resource_edges: false,
            output_group_edges: false,
            analyze_service_account_impersonation: false

  field :expand_groups, 1, type: :bool, json_name: "expandGroups", deprecated: false
  field :expand_roles, 2, type: :bool, json_name: "expandRoles", deprecated: false
  field :expand_resources, 3, type: :bool, json_name: "expandResources", deprecated: false

  field :output_resource_edges, 4,
    type: :bool,
    json_name: "outputResourceEdges",
    deprecated: false

  field :output_group_edges, 5, type: :bool, json_name: "outputGroupEdges", deprecated: false

  field :analyze_service_account_impersonation, 6,
    type: :bool,
    json_name: "analyzeServiceAccountImpersonation",
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analysis_query: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.t() | nil,
          options: Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options.t() | nil,
          output_config: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.t() | nil
        }

  defstruct analysis_query: nil,
            options: nil,
            output_config: nil

  field :analysis_query, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery,
    json_name: "analysisQuery",
    deprecated: false

  field :options, 2,
    type: Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options,
    deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_config: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.t() | nil
        }

  defstruct output_config: nil

  field :output_config, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig,
    json_name: "outputConfig"
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

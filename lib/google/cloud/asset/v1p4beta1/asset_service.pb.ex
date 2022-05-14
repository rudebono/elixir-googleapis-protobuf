defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.ResourceSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName", deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.IdentitySelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :identity, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery.AccessSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :roles, 1, repeated: true, type: :string, deprecated: false
  field :permissions, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end
defmodule Google.Cloud.Asset.V1p4beta1.ExportIamPolicyAnalysisRequest.Options do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :output_config, 1,
    type: Google.Cloud.Asset.V1p4beta1.IamPolicyAnalysisOutputConfig,
    json_name: "outputConfig"
end
defmodule Google.Cloud.Asset.V1p4beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.asset.v1p4beta1.AssetService",
    protoc_gen_elixir_version: "0.10.0"

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

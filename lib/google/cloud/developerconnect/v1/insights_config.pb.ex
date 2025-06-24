defmodule Google.Cloud.Developerconnect.V1.InsightsConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 5
  field :COMPLETE, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Developerconnect.V1.RuntimeConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :LINKED, 1
  field :UNLINKED, 2
end

defmodule Google.Cloud.Developerconnect.V1.InsightsConfig.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.InsightsConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.InsightsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :insights_config_context, 0

  field :app_hub_application, 4,
    type: :string,
    json_name: "appHubApplication",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :runtime_configs, 5,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.RuntimeConfig,
    json_name: "runtimeConfigs",
    deprecated: false

  field :artifact_configs, 6,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.ArtifactConfig,
    json_name: "artifactConfigs",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig.State,
    enum: true,
    deprecated: false

  field :annotations, 8,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :reconciling, 10, type: :bool, deprecated: false
  field :errors, 11, repeated: true, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :runtime, 0

  oneof :derived_from, 1

  field :gke_workload, 3,
    type: Google.Cloud.Developerconnect.V1.GKEWorkload,
    json_name: "gkeWorkload",
    oneof: 0,
    deprecated: false

  field :app_hub_workload, 4,
    type: Google.Cloud.Developerconnect.V1.AppHubWorkload,
    json_name: "appHubWorkload",
    oneof: 1,
    deprecated: false

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Developerconnect.V1.RuntimeConfig.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GKEWorkload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
  field :deployment, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.AppHubWorkload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workload, 1, type: :string, deprecated: false
  field :criticality, 2, type: :string, deprecated: false
  field :environment, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ArtifactConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :artifact_storage, 0

  oneof :artifact_metadata_storage, 1

  field :google_artifact_registry, 2,
    type: Google.Cloud.Developerconnect.V1.GoogleArtifactRegistry,
    json_name: "googleArtifactRegistry",
    oneof: 0,
    deprecated: false

  field :google_artifact_analysis, 3,
    type: Google.Cloud.Developerconnect.V1.GoogleArtifactAnalysis,
    json_name: "googleArtifactAnalysis",
    oneof: 1,
    deprecated: false

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GoogleArtifactAnalysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GoogleArtifactRegistry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :artifact_registry_package, 2,
    type: :string,
    json_name: "artifactRegistryPackage",
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateInsightsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :insights_config_id, 2, type: :string, json_name: "insightsConfigId", deprecated: false

  field :insights_config, 3,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig,
    json_name: "insightsConfig",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GetInsightsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListInsightsConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListInsightsConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :insights_configs, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig,
    json_name: "insightsConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.DeleteInsightsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.UpdateInsightsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :insights_config, 2,
    type: Google.Cloud.Developerconnect.V1.InsightsConfig,
    json_name: "insightsConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.InsightsConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.developerconnect.v1.InsightsConfigService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListInsightsConfigs,
      Google.Cloud.Developerconnect.V1.ListInsightsConfigsRequest,
      Google.Cloud.Developerconnect.V1.ListInsightsConfigsResponse

  rpc :CreateInsightsConfig,
      Google.Cloud.Developerconnect.V1.CreateInsightsConfigRequest,
      Google.Longrunning.Operation

  rpc :GetInsightsConfig,
      Google.Cloud.Developerconnect.V1.GetInsightsConfigRequest,
      Google.Cloud.Developerconnect.V1.InsightsConfig

  rpc :UpdateInsightsConfig,
      Google.Cloud.Developerconnect.V1.UpdateInsightsConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteInsightsConfig,
      Google.Cloud.Developerconnect.V1.DeleteInsightsConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Developerconnect.V1.InsightsConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Developerconnect.V1.InsightsConfigService.Service
end

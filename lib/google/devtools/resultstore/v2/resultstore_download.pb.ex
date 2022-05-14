defmodule Google.Devtools.Resultstore.V2.GetInvocationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.SearchInvocationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 3, type: :int64, oneof: 0
  field :query, 4, type: :string
  field :project_id, 5, type: :string, json_name: "projectId"
  field :exact_match, 7, type: :bool, json_name: "exactMatch"
end
defmodule Google.Devtools.Resultstore.V2.SearchInvocationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :invocations, 1, repeated: true, type: Google.Devtools.Resultstore.V2.Invocation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.ExportInvocationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
end
defmodule Google.Devtools.Resultstore.V2.ExportInvocationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :invocation, 1, type: Google.Devtools.Resultstore.V2.Invocation
  field :targets, 2, repeated: true, type: Google.Devtools.Resultstore.V2.Target
  field :configurations, 3, repeated: true, type: Google.Devtools.Resultstore.V2.Configuration

  field :configured_targets, 4,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTargets"

  field :actions, 5, repeated: true, type: Google.Devtools.Resultstore.V2.Action

  field :file_sets, 6,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileSet,
    json_name: "fileSets"

  field :next_page_token, 7, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.GetInvocationDownloadMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.GetConfigurationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.ListConfigurationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :filter, 5, type: :string
end
defmodule Google.Devtools.Resultstore.V2.ListConfigurationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :configurations, 1, repeated: true, type: Google.Devtools.Resultstore.V2.Configuration
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.GetTargetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.ListTargetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :filter, 5, type: :string
end
defmodule Google.Devtools.Resultstore.V2.ListTargetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :targets, 1, repeated: true, type: Google.Devtools.Resultstore.V2.Target
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.GetConfiguredTargetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.ListConfiguredTargetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :filter, 5, type: :string
end
defmodule Google.Devtools.Resultstore.V2.ListConfiguredTargetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :configured_targets, 1,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTargets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.SearchConfiguredTargetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :query, 5, type: :string
  field :project_id, 6, type: :string, json_name: "projectId"
  field :exact_match, 7, type: :bool, json_name: "exactMatch"
end
defmodule Google.Devtools.Resultstore.V2.SearchConfiguredTargetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :configured_targets, 1,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTargets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.GetActionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.ListActionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :filter, 5, type: :string
end
defmodule Google.Devtools.Resultstore.V2.ListActionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Google.Devtools.Resultstore.V2.Action
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.BatchListActionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :configured_targets, 2, repeated: true, type: :string, json_name: "configuredTargets"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 5, type: :int64, oneof: 0
  field :filter, 6, type: :string
end
defmodule Google.Devtools.Resultstore.V2.BatchListActionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Google.Devtools.Resultstore.V2.Action
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :not_found, 3, repeated: true, type: :string, json_name: "notFound"
end
defmodule Google.Devtools.Resultstore.V2.GetFileSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Resultstore.V2.ListFileSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
  field :filter, 5, type: :string
end
defmodule Google.Devtools.Resultstore.V2.ListFileSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file_sets, 1,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileSet,
    json_name: "fileSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.TraverseFileSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :page_start, 0

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken", oneof: 0
  field :offset, 4, type: :int64, oneof: 0
end
defmodule Google.Devtools.Resultstore.V2.TraverseFileSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file_sets, 1,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileSet,
    json_name: "fileSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Resultstore.V2.ResultStoreDownload.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.resultstore.v2.ResultStoreDownload",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetInvocation,
      Google.Devtools.Resultstore.V2.GetInvocationRequest,
      Google.Devtools.Resultstore.V2.Invocation

  rpc :SearchInvocations,
      Google.Devtools.Resultstore.V2.SearchInvocationsRequest,
      Google.Devtools.Resultstore.V2.SearchInvocationsResponse

  rpc :ExportInvocation,
      Google.Devtools.Resultstore.V2.ExportInvocationRequest,
      Google.Devtools.Resultstore.V2.ExportInvocationResponse

  rpc :GetInvocationDownloadMetadata,
      Google.Devtools.Resultstore.V2.GetInvocationDownloadMetadataRequest,
      Google.Devtools.Resultstore.V2.DownloadMetadata

  rpc :GetConfiguration,
      Google.Devtools.Resultstore.V2.GetConfigurationRequest,
      Google.Devtools.Resultstore.V2.Configuration

  rpc :ListConfigurations,
      Google.Devtools.Resultstore.V2.ListConfigurationsRequest,
      Google.Devtools.Resultstore.V2.ListConfigurationsResponse

  rpc :GetTarget,
      Google.Devtools.Resultstore.V2.GetTargetRequest,
      Google.Devtools.Resultstore.V2.Target

  rpc :ListTargets,
      Google.Devtools.Resultstore.V2.ListTargetsRequest,
      Google.Devtools.Resultstore.V2.ListTargetsResponse

  rpc :GetConfiguredTarget,
      Google.Devtools.Resultstore.V2.GetConfiguredTargetRequest,
      Google.Devtools.Resultstore.V2.ConfiguredTarget

  rpc :ListConfiguredTargets,
      Google.Devtools.Resultstore.V2.ListConfiguredTargetsRequest,
      Google.Devtools.Resultstore.V2.ListConfiguredTargetsResponse

  rpc :SearchConfiguredTargets,
      Google.Devtools.Resultstore.V2.SearchConfiguredTargetsRequest,
      Google.Devtools.Resultstore.V2.SearchConfiguredTargetsResponse

  rpc :GetAction,
      Google.Devtools.Resultstore.V2.GetActionRequest,
      Google.Devtools.Resultstore.V2.Action

  rpc :ListActions,
      Google.Devtools.Resultstore.V2.ListActionsRequest,
      Google.Devtools.Resultstore.V2.ListActionsResponse

  rpc :BatchListActions,
      Google.Devtools.Resultstore.V2.BatchListActionsRequest,
      Google.Devtools.Resultstore.V2.BatchListActionsResponse

  rpc :GetFileSet,
      Google.Devtools.Resultstore.V2.GetFileSetRequest,
      Google.Devtools.Resultstore.V2.FileSet

  rpc :ListFileSets,
      Google.Devtools.Resultstore.V2.ListFileSetsRequest,
      Google.Devtools.Resultstore.V2.ListFileSetsResponse

  rpc :TraverseFileSets,
      Google.Devtools.Resultstore.V2.TraverseFileSetsRequest,
      Google.Devtools.Resultstore.V2.TraverseFileSetsResponse
end

defmodule Google.Devtools.Resultstore.V2.ResultStoreDownload.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Resultstore.V2.ResultStoreDownload.Service
end

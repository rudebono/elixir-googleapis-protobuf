defmodule Google.Cloud.Aiplatform.V1.CreateMetadataStoreRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :metadata_store, 2,
    type: Google.Cloud.Aiplatform.V1.MetadataStore,
    json_name: "metadataStore",
    deprecated: false

  field :metadata_store_id, 3, type: :string, json_name: "metadataStoreId"
end

defmodule Google.Cloud.Aiplatform.V1.CreateMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.GetMetadataStoreRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataStoresRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataStoresResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata_stores, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MetadataStore,
    json_name: "metadataStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteMetadataStoreRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1.DeleteMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.CreateArtifactRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :artifact, 2, type: Google.Cloud.Aiplatform.V1.Artifact, deprecated: false
  field :artifact_id, 3, type: :string, json_name: "artifactId"
end

defmodule Google.Cloud.Aiplatform.V1.GetArtifactRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListArtifactsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListArtifactsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateArtifactRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact, 1, type: Google.Cloud.Aiplatform.V1.Artifact, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteArtifactRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.CreateContextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :context, 2, type: Google.Cloud.Aiplatform.V1.Context, deprecated: false
  field :context_id, 3, type: :string, json_name: "contextId"
end

defmodule Google.Cloud.Aiplatform.V1.GetContextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListContextsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListContextsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :contexts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Context
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateContextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :context, 1, type: Google.Cloud.Aiplatform.V1.Context, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteContextRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false
  field :artifacts, 2, repeated: true, type: :string, deprecated: false
  field :executions, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.AddContextChildrenRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false

  field :child_contexts, 2,
    repeated: true,
    type: :string,
    json_name: "childContexts",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AddContextChildrenResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.RemoveContextChildrenRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false

  field :child_contexts, 2,
    repeated: true,
    type: :string,
    json_name: "childContexts",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RemoveContextChildrenResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.QueryContextLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :execution, 2, type: Google.Cloud.Aiplatform.V1.Execution, deprecated: false
  field :execution_id, 3, type: :string, json_name: "executionId"
end

defmodule Google.Cloud.Aiplatform.V1.GetExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :execution, 1, type: Google.Cloud.Aiplatform.V1.Execution, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteExecutionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.AddExecutionEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :execution, 1, type: :string, deprecated: false
  field :events, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Event
end

defmodule Google.Cloud.Aiplatform.V1.AddExecutionEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.QueryExecutionInputsAndOutputsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :execution, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :metadata_schema, 2,
    type: Google.Cloud.Aiplatform.V1.MetadataSchema,
    json_name: "metadataSchema",
    deprecated: false

  field :metadata_schema_id, 3, type: :string, json_name: "metadataSchemaId"
end

defmodule Google.Cloud.Aiplatform.V1.GetMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataSchemasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataSchemasResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata_schemas, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MetadataSchema,
    json_name: "metadataSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.QueryArtifactLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :artifact, 1, type: :string, deprecated: false
  field :max_hops, 2, type: :int32, json_name: "maxHops"
  field :filter, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.MetadataService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.MetadataService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateMetadataStore,
      Google.Cloud.Aiplatform.V1.CreateMetadataStoreRequest,
      Google.Longrunning.Operation

  rpc :GetMetadataStore,
      Google.Cloud.Aiplatform.V1.GetMetadataStoreRequest,
      Google.Cloud.Aiplatform.V1.MetadataStore

  rpc :ListMetadataStores,
      Google.Cloud.Aiplatform.V1.ListMetadataStoresRequest,
      Google.Cloud.Aiplatform.V1.ListMetadataStoresResponse

  rpc :DeleteMetadataStore,
      Google.Cloud.Aiplatform.V1.DeleteMetadataStoreRequest,
      Google.Longrunning.Operation

  rpc :CreateArtifact,
      Google.Cloud.Aiplatform.V1.CreateArtifactRequest,
      Google.Cloud.Aiplatform.V1.Artifact

  rpc :GetArtifact,
      Google.Cloud.Aiplatform.V1.GetArtifactRequest,
      Google.Cloud.Aiplatform.V1.Artifact

  rpc :ListArtifacts,
      Google.Cloud.Aiplatform.V1.ListArtifactsRequest,
      Google.Cloud.Aiplatform.V1.ListArtifactsResponse

  rpc :UpdateArtifact,
      Google.Cloud.Aiplatform.V1.UpdateArtifactRequest,
      Google.Cloud.Aiplatform.V1.Artifact

  rpc :DeleteArtifact,
      Google.Cloud.Aiplatform.V1.DeleteArtifactRequest,
      Google.Longrunning.Operation

  rpc :PurgeArtifacts,
      Google.Cloud.Aiplatform.V1.PurgeArtifactsRequest,
      Google.Longrunning.Operation

  rpc :CreateContext,
      Google.Cloud.Aiplatform.V1.CreateContextRequest,
      Google.Cloud.Aiplatform.V1.Context

  rpc :GetContext,
      Google.Cloud.Aiplatform.V1.GetContextRequest,
      Google.Cloud.Aiplatform.V1.Context

  rpc :ListContexts,
      Google.Cloud.Aiplatform.V1.ListContextsRequest,
      Google.Cloud.Aiplatform.V1.ListContextsResponse

  rpc :UpdateContext,
      Google.Cloud.Aiplatform.V1.UpdateContextRequest,
      Google.Cloud.Aiplatform.V1.Context

  rpc :DeleteContext,
      Google.Cloud.Aiplatform.V1.DeleteContextRequest,
      Google.Longrunning.Operation

  rpc :PurgeContexts,
      Google.Cloud.Aiplatform.V1.PurgeContextsRequest,
      Google.Longrunning.Operation

  rpc :AddContextArtifactsAndExecutions,
      Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsRequest,
      Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsResponse

  rpc :AddContextChildren,
      Google.Cloud.Aiplatform.V1.AddContextChildrenRequest,
      Google.Cloud.Aiplatform.V1.AddContextChildrenResponse

  rpc :RemoveContextChildren,
      Google.Cloud.Aiplatform.V1.RemoveContextChildrenRequest,
      Google.Cloud.Aiplatform.V1.RemoveContextChildrenResponse

  rpc :QueryContextLineageSubgraph,
      Google.Cloud.Aiplatform.V1.QueryContextLineageSubgraphRequest,
      Google.Cloud.Aiplatform.V1.LineageSubgraph

  rpc :CreateExecution,
      Google.Cloud.Aiplatform.V1.CreateExecutionRequest,
      Google.Cloud.Aiplatform.V1.Execution

  rpc :GetExecution,
      Google.Cloud.Aiplatform.V1.GetExecutionRequest,
      Google.Cloud.Aiplatform.V1.Execution

  rpc :ListExecutions,
      Google.Cloud.Aiplatform.V1.ListExecutionsRequest,
      Google.Cloud.Aiplatform.V1.ListExecutionsResponse

  rpc :UpdateExecution,
      Google.Cloud.Aiplatform.V1.UpdateExecutionRequest,
      Google.Cloud.Aiplatform.V1.Execution

  rpc :DeleteExecution,
      Google.Cloud.Aiplatform.V1.DeleteExecutionRequest,
      Google.Longrunning.Operation

  rpc :PurgeExecutions,
      Google.Cloud.Aiplatform.V1.PurgeExecutionsRequest,
      Google.Longrunning.Operation

  rpc :AddExecutionEvents,
      Google.Cloud.Aiplatform.V1.AddExecutionEventsRequest,
      Google.Cloud.Aiplatform.V1.AddExecutionEventsResponse

  rpc :QueryExecutionInputsAndOutputs,
      Google.Cloud.Aiplatform.V1.QueryExecutionInputsAndOutputsRequest,
      Google.Cloud.Aiplatform.V1.LineageSubgraph

  rpc :CreateMetadataSchema,
      Google.Cloud.Aiplatform.V1.CreateMetadataSchemaRequest,
      Google.Cloud.Aiplatform.V1.MetadataSchema

  rpc :GetMetadataSchema,
      Google.Cloud.Aiplatform.V1.GetMetadataSchemaRequest,
      Google.Cloud.Aiplatform.V1.MetadataSchema

  rpc :ListMetadataSchemas,
      Google.Cloud.Aiplatform.V1.ListMetadataSchemasRequest,
      Google.Cloud.Aiplatform.V1.ListMetadataSchemasResponse

  rpc :QueryArtifactLineageSubgraph,
      Google.Cloud.Aiplatform.V1.QueryArtifactLineageSubgraphRequest,
      Google.Cloud.Aiplatform.V1.LineageSubgraph
end

defmodule Google.Cloud.Aiplatform.V1.MetadataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.MetadataService.Service
end
defmodule Google.Cloud.Aiplatform.V1.CreateMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_store: Google.Cloud.Aiplatform.V1.MetadataStore.t() | nil,
          metadata_store_id: String.t()
        }

  defstruct [:parent, :metadata_store, :metadata_store_id]

  field :parent, 1, type: :string

  field :metadata_store, 2,
    type: Google.Cloud.Aiplatform.V1.MetadataStore,
    json_name: "metadataStore"

  field :metadata_store_id, 3, type: :string, json_name: "metadataStoreId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CreateMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GetMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataStoresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataStoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_stores: [Google.Cloud.Aiplatform.V1.MetadataStore.t()],
          next_page_token: String.t()
        }

  defstruct [:metadata_stores, :next_page_token]

  field :metadata_stores, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MetadataStore,
    json_name: "metadataStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DeleteMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool, deprecated: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DeleteMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CreateArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          artifact: Google.Cloud.Aiplatform.V1.Artifact.t() | nil,
          artifact_id: String.t()
        }

  defstruct [:parent, :artifact, :artifact_id]

  field :parent, 1, type: :string
  field :artifact, 2, type: Google.Cloud.Aiplatform.V1.Artifact
  field :artifact_id, 3, type: :string, json_name: "artifactId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GetArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListArtifactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListArtifactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1.Artifact.t()],
          next_page_token: String.t()
        }

  defstruct [:artifacts, :next_page_token]

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.UpdateArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact: Google.Cloud.Aiplatform.V1.Artifact.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:artifact, :update_mask, :allow_missing]

  field :artifact, 1, type: Google.Cloud.Aiplatform.V1.Artifact
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DeleteArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct [:parent, :filter, :force]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purge_count: integer,
          purge_sample: [String.t()]
        }

  defstruct [:purge_count, :purge_sample]

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :purge_sample, 2, repeated: true, type: :string, json_name: "purgeSample"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeArtifactsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CreateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          context: Google.Cloud.Aiplatform.V1.Context.t() | nil,
          context_id: String.t()
        }

  defstruct [:parent, :context, :context_id]

  field :parent, 1, type: :string
  field :context, 2, type: Google.Cloud.Aiplatform.V1.Context
  field :context_id, 3, type: :string, json_name: "contextId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GetContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListContextsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListContextsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contexts: [Google.Cloud.Aiplatform.V1.Context.t()],
          next_page_token: String.t()
        }

  defstruct [:contexts, :next_page_token]

  field :contexts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Context
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.UpdateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: Google.Cloud.Aiplatform.V1.Context.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:context, :update_mask, :allow_missing]

  field :context, 1, type: Google.Cloud.Aiplatform.V1.Context
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DeleteContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          etag: String.t()
        }

  defstruct [:name, :force, :etag]

  field :name, 1, type: :string
  field :force, 2, type: :bool
  field :etag, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct [:parent, :filter, :force]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purge_count: integer,
          purge_sample: [String.t()]
        }

  defstruct [:purge_count, :purge_sample]

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :purge_sample, 2, repeated: true, type: :string, json_name: "purgeSample"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeContextsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: String.t(),
          artifacts: [String.t()],
          executions: [String.t()]
        }

  defstruct [:context, :artifacts, :executions]

  field :context, 1, type: :string
  field :artifacts, 2, repeated: true, type: :string
  field :executions, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddContextArtifactsAndExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddContextChildrenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: String.t(),
          child_contexts: [String.t()]
        }

  defstruct [:context, :child_contexts]

  field :context, 1, type: :string
  field :child_contexts, 2, repeated: true, type: :string, json_name: "childContexts"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddContextChildrenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.QueryContextLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: String.t()
        }

  defstruct [:context]

  field :context, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          execution: Google.Cloud.Aiplatform.V1.Execution.t() | nil,
          execution_id: String.t()
        }

  defstruct [:parent, :execution, :execution_id]

  field :parent, 1, type: :string
  field :execution, 2, type: Google.Cloud.Aiplatform.V1.Execution
  field :execution_id, 3, type: :string, json_name: "executionId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GetExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executions: [Google.Cloud.Aiplatform.V1.Execution.t()],
          next_page_token: String.t()
        }

  defstruct [:executions, :next_page_token]

  field :executions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.UpdateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: Google.Cloud.Aiplatform.V1.Execution.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:execution, :update_mask, :allow_missing]

  field :execution, 1, type: Google.Cloud.Aiplatform.V1.Execution
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DeleteExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct [:parent, :filter, :force]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purge_count: integer,
          purge_sample: [String.t()]
        }

  defstruct [:purge_count, :purge_sample]

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :purge_sample, 2, repeated: true, type: :string, json_name: "purgeSample"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PurgeExecutionsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddExecutionEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: String.t(),
          events: [Google.Cloud.Aiplatform.V1.Event.t()]
        }

  defstruct [:execution, :events]

  field :execution, 1, type: :string
  field :events, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Event

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.AddExecutionEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.QueryExecutionInputsAndOutputsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: String.t()
        }

  defstruct [:execution]

  field :execution, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.CreateMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_schema: Google.Cloud.Aiplatform.V1.MetadataSchema.t() | nil,
          metadata_schema_id: String.t()
        }

  defstruct [:parent, :metadata_schema, :metadata_schema_id]

  field :parent, 1, type: :string

  field :metadata_schema, 2,
    type: Google.Cloud.Aiplatform.V1.MetadataSchema,
    json_name: "metadataSchema"

  field :metadata_schema_id, 3, type: :string, json_name: "metadataSchemaId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.GetMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataSchemasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ListMetadataSchemasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_schemas: [Google.Cloud.Aiplatform.V1.MetadataSchema.t()],
          next_page_token: String.t()
        }

  defstruct [:metadata_schemas, :next_page_token]

  field :metadata_schemas, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MetadataSchema,
    json_name: "metadataSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.QueryArtifactLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact: String.t(),
          max_hops: integer,
          filter: String.t()
        }

  defstruct [:artifact, :max_hops, :filter]

  field :artifact, 1, type: :string
  field :max_hops, 2, type: :int32, json_name: "maxHops"
  field :filter, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.MetadataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.MetadataService"

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

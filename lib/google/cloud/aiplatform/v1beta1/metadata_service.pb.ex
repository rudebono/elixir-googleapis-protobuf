defmodule Google.Cloud.Aiplatform.V1beta1.CreateMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_store: Google.Cloud.Aiplatform.V1beta1.MetadataStore.t() | nil,
          metadata_store_id: String.t()
        }

  defstruct [:parent, :metadata_store, :metadata_store_id]

  field :parent, 1, type: :string
  field :metadata_store, 2, type: Google.Cloud.Aiplatform.V1beta1.MetadataStore
  field :metadata_store_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMetadataStoresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMetadataStoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_stores: [Google.Cloud.Aiplatform.V1beta1.MetadataStore.t()],
          next_page_token: String.t()
        }

  defstruct [:metadata_stores, :next_page_token]

  field :metadata_stores, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.MetadataStore
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteMetadataStoreRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteMetadataStoreOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          artifact: Google.Cloud.Aiplatform.V1beta1.Artifact.t() | nil,
          artifact_id: String.t()
        }

  defstruct [:parent, :artifact, :artifact_id]

  field :parent, 1, type: :string
  field :artifact, 2, type: Google.Cloud.Aiplatform.V1beta1.Artifact
  field :artifact_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListArtifactsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListArtifactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifacts: [Google.Cloud.Aiplatform.V1beta1.Artifact.t()],
          next_page_token: String.t()
        }

  defstruct [:artifacts, :next_page_token]

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Artifact
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateArtifactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact: Google.Cloud.Aiplatform.V1beta1.Artifact.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:artifact, :update_mask, :allow_missing]

  field :artifact, 1, type: Google.Cloud.Aiplatform.V1beta1.Artifact
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          context: Google.Cloud.Aiplatform.V1beta1.Context.t() | nil,
          context_id: String.t()
        }

  defstruct [:parent, :context, :context_id]

  field :parent, 1, type: :string
  field :context, 2, type: Google.Cloud.Aiplatform.V1beta1.Context
  field :context_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListContextsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListContextsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contexts: [Google.Cloud.Aiplatform.V1beta1.Context.t()],
          next_page_token: String.t()
        }

  defstruct [:contexts, :next_page_token]

  field :contexts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Context
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: Google.Cloud.Aiplatform.V1beta1.Context.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:context, :update_mask, :allow_missing]

  field :context, 1, type: Google.Cloud.Aiplatform.V1beta1.Context
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddContextArtifactsAndExecutionsRequest do
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
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddContextArtifactsAndExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddContextChildrenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: String.t(),
          child_contexts: [String.t()]
        }

  defstruct [:context, :child_contexts]

  field :context, 1, type: :string
  field :child_contexts, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddContextChildrenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryContextLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: String.t()
        }

  defstruct [:context]

  field :context, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          execution: Google.Cloud.Aiplatform.V1beta1.Execution.t() | nil,
          execution_id: String.t()
        }

  defstruct [:parent, :execution, :execution_id]

  field :parent, 1, type: :string
  field :execution, 2, type: Google.Cloud.Aiplatform.V1beta1.Execution
  field :execution_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExecutionsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executions: [Google.Cloud.Aiplatform.V1beta1.Execution.t()],
          next_page_token: String.t()
        }

  defstruct [:executions, :next_page_token]

  field :executions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Execution
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: Google.Cloud.Aiplatform.V1beta1.Execution.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean
        }

  defstruct [:execution, :update_mask, :allow_missing]

  field :execution, 1, type: Google.Cloud.Aiplatform.V1beta1.Execution
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :allow_missing, 3, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddExecutionEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: String.t(),
          events: [Google.Cloud.Aiplatform.V1beta1.Event.t()]
        }

  defstruct [:execution, :events]

  field :execution, 1, type: :string
  field :events, 2, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Event
end

defmodule Google.Cloud.Aiplatform.V1beta1.AddExecutionEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryExecutionInputsAndOutputsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution: String.t()
        }

  defstruct [:execution]

  field :execution, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_schema: Google.Cloud.Aiplatform.V1beta1.MetadataSchema.t() | nil,
          metadata_schema_id: String.t()
        }

  defstruct [:parent, :metadata_schema, :metadata_schema_id]

  field :parent, 1, type: :string
  field :metadata_schema, 2, type: Google.Cloud.Aiplatform.V1beta1.MetadataSchema
  field :metadata_schema_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetMetadataSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMetadataSchemasRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListMetadataSchemasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_schemas: [Google.Cloud.Aiplatform.V1beta1.MetadataSchema.t()],
          next_page_token: String.t()
        }

  defstruct [:metadata_schemas, :next_page_token]

  field :metadata_schemas, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.MetadataSchema
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryArtifactLineageSubgraphRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact: String.t(),
          max_hops: integer,
          filter: String.t()
        }

  defstruct [:artifact, :max_hops, :filter]

  field :artifact, 1, type: :string
  field :max_hops, 2, type: :int32
  field :filter, 3, type: :string
end

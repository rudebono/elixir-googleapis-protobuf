defmodule Google.Datastore.V1.CommitRequest.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :TRANSACTIONAL | :NON_TRANSACTIONAL

  field :MODE_UNSPECIFIED, 0
  field :TRANSACTIONAL, 1
  field :NON_TRANSACTIONAL, 2
end
defmodule Google.Datastore.V1.ReadOptions.ReadConsistency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :READ_CONSISTENCY_UNSPECIFIED | :STRONG | :EVENTUAL

  field :READ_CONSISTENCY_UNSPECIFIED, 0
  field :STRONG, 1
  field :EVENTUAL, 2
end
defmodule Google.Datastore.V1.LookupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          read_options: Google.Datastore.V1.ReadOptions.t() | nil,
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct project_id: "",
            read_options: nil,
            keys: []

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions, json_name: "readOptions"
  field :keys, 3, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
end
defmodule Google.Datastore.V1.LookupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          found: [Google.Datastore.V1.EntityResult.t()],
          missing: [Google.Datastore.V1.EntityResult.t()],
          deferred: [Google.Datastore.V1.Key.t()]
        }

  defstruct found: [],
            missing: [],
            deferred: []

  field :found, 1, repeated: true, type: Google.Datastore.V1.EntityResult
  field :missing, 2, repeated: true, type: Google.Datastore.V1.EntityResult
  field :deferred, 3, repeated: true, type: Google.Datastore.V1.Key
end
defmodule Google.Datastore.V1.RunQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type:
            {:query, Google.Datastore.V1.Query.t() | nil}
            | {:gql_query, Google.Datastore.V1.GqlQuery.t() | nil},
          project_id: String.t(),
          partition_id: Google.Datastore.V1.PartitionId.t() | nil,
          read_options: Google.Datastore.V1.ReadOptions.t() | nil
        }

  defstruct query_type: nil,
            project_id: "",
            partition_id: nil,
            read_options: nil

  oneof :query_type, 0

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :partition_id, 2, type: Google.Datastore.V1.PartitionId, json_name: "partitionId"
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions, json_name: "readOptions"
  field :query, 3, type: Google.Datastore.V1.Query, oneof: 0
  field :gql_query, 7, type: Google.Datastore.V1.GqlQuery, json_name: "gqlQuery", oneof: 0
end
defmodule Google.Datastore.V1.RunQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch: Google.Datastore.V1.QueryResultBatch.t() | nil,
          query: Google.Datastore.V1.Query.t() | nil
        }

  defstruct batch: nil,
            query: nil

  field :batch, 1, type: Google.Datastore.V1.QueryResultBatch
  field :query, 2, type: Google.Datastore.V1.Query
end
defmodule Google.Datastore.V1.BeginTransactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          transaction_options: Google.Datastore.V1.TransactionOptions.t() | nil
        }

  defstruct project_id: "",
            transaction_options: nil

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false

  field :transaction_options, 10,
    type: Google.Datastore.V1.TransactionOptions,
    json_name: "transactionOptions"
end
defmodule Google.Datastore.V1.BeginTransactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction: binary
        }

  defstruct transaction: ""

  field :transaction, 1, type: :bytes
end
defmodule Google.Datastore.V1.RollbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          transaction: binary
        }

  defstruct project_id: "",
            transaction: ""

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :transaction, 1, type: :bytes, deprecated: false
end
defmodule Google.Datastore.V1.RollbackResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Datastore.V1.CommitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_selector: {:transaction, binary},
          project_id: String.t(),
          mode: Google.Datastore.V1.CommitRequest.Mode.t(),
          mutations: [Google.Datastore.V1.Mutation.t()]
        }

  defstruct transaction_selector: nil,
            project_id: "",
            mode: :MODE_UNSPECIFIED,
            mutations: []

  oneof :transaction_selector, 0

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :mode, 5, type: Google.Datastore.V1.CommitRequest.Mode, enum: true
  field :transaction, 1, type: :bytes, oneof: 0
  field :mutations, 6, repeated: true, type: Google.Datastore.V1.Mutation
end
defmodule Google.Datastore.V1.CommitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mutation_results: [Google.Datastore.V1.MutationResult.t()],
          index_updates: integer
        }

  defstruct mutation_results: [],
            index_updates: 0

  field :mutation_results, 3,
    repeated: true,
    type: Google.Datastore.V1.MutationResult,
    json_name: "mutationResults"

  field :index_updates, 4, type: :int32, json_name: "indexUpdates"
end
defmodule Google.Datastore.V1.AllocateIdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct project_id: "",
            keys: []

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
end
defmodule Google.Datastore.V1.AllocateIdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct keys: []

  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key
end
defmodule Google.Datastore.V1.ReserveIdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          database_id: String.t(),
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct project_id: "",
            database_id: "",
            keys: []

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
end
defmodule Google.Datastore.V1.ReserveIdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Datastore.V1.Mutation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:insert, Google.Datastore.V1.Entity.t() | nil}
            | {:update, Google.Datastore.V1.Entity.t() | nil}
            | {:upsert, Google.Datastore.V1.Entity.t() | nil}
            | {:delete, Google.Datastore.V1.Key.t() | nil},
          conflict_detection_strategy: {:base_version, integer}
        }

  defstruct operation: nil,
            conflict_detection_strategy: nil

  oneof :operation, 0
  oneof :conflict_detection_strategy, 1

  field :insert, 4, type: Google.Datastore.V1.Entity, oneof: 0
  field :update, 5, type: Google.Datastore.V1.Entity, oneof: 0
  field :upsert, 6, type: Google.Datastore.V1.Entity, oneof: 0
  field :delete, 7, type: Google.Datastore.V1.Key, oneof: 0
  field :base_version, 8, type: :int64, json_name: "baseVersion", oneof: 1
end
defmodule Google.Datastore.V1.MutationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Datastore.V1.Key.t() | nil,
          version: integer,
          conflict_detected: boolean
        }

  defstruct key: nil,
            version: 0,
            conflict_detected: false

  field :key, 3, type: Google.Datastore.V1.Key
  field :version, 4, type: :int64
  field :conflict_detected, 5, type: :bool, json_name: "conflictDetected"
end
defmodule Google.Datastore.V1.ReadOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_type:
            {:read_consistency, Google.Datastore.V1.ReadOptions.ReadConsistency.t()}
            | {:transaction, binary}
        }

  defstruct consistency_type: nil

  oneof :consistency_type, 0

  field :read_consistency, 1,
    type: Google.Datastore.V1.ReadOptions.ReadConsistency,
    json_name: "readConsistency",
    enum: true,
    oneof: 0

  field :transaction, 2, type: :bytes, oneof: 0
end
defmodule Google.Datastore.V1.TransactionOptions.ReadWrite do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          previous_transaction: binary
        }

  defstruct previous_transaction: ""

  field :previous_transaction, 1, type: :bytes, json_name: "previousTransaction"
end
defmodule Google.Datastore.V1.TransactionOptions.ReadOnly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Datastore.V1.TransactionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode:
            {:read_write, Google.Datastore.V1.TransactionOptions.ReadWrite.t() | nil}
            | {:read_only, Google.Datastore.V1.TransactionOptions.ReadOnly.t() | nil}
        }

  defstruct mode: nil

  oneof :mode, 0

  field :read_write, 1,
    type: Google.Datastore.V1.TransactionOptions.ReadWrite,
    json_name: "readWrite",
    oneof: 0

  field :read_only, 2,
    type: Google.Datastore.V1.TransactionOptions.ReadOnly,
    json_name: "readOnly",
    oneof: 0
end
defmodule Google.Datastore.V1.Datastore.Service do
  @moduledoc false
  use GRPC.Service, name: "google.datastore.v1.Datastore"

  rpc :Lookup, Google.Datastore.V1.LookupRequest, Google.Datastore.V1.LookupResponse

  rpc :RunQuery, Google.Datastore.V1.RunQueryRequest, Google.Datastore.V1.RunQueryResponse

  rpc :BeginTransaction,
      Google.Datastore.V1.BeginTransactionRequest,
      Google.Datastore.V1.BeginTransactionResponse

  rpc :Commit, Google.Datastore.V1.CommitRequest, Google.Datastore.V1.CommitResponse

  rpc :Rollback, Google.Datastore.V1.RollbackRequest, Google.Datastore.V1.RollbackResponse

  rpc :AllocateIds,
      Google.Datastore.V1.AllocateIdsRequest,
      Google.Datastore.V1.AllocateIdsResponse

  rpc :ReserveIds, Google.Datastore.V1.ReserveIdsRequest, Google.Datastore.V1.ReserveIdsResponse
end

defmodule Google.Datastore.V1.Datastore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Datastore.V1.Datastore.Service
end

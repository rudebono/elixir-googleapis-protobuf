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

  defstruct [:project_id, :read_options, :keys]

  field :project_id, 8, type: :string
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions
  field :keys, 3, repeated: true, type: Google.Datastore.V1.Key
end

defmodule Google.Datastore.V1.LookupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          found: [Google.Datastore.V1.EntityResult.t()],
          missing: [Google.Datastore.V1.EntityResult.t()],
          deferred: [Google.Datastore.V1.Key.t()]
        }

  defstruct [:found, :missing, :deferred]

  field :found, 1, repeated: true, type: Google.Datastore.V1.EntityResult
  field :missing, 2, repeated: true, type: Google.Datastore.V1.EntityResult
  field :deferred, 3, repeated: true, type: Google.Datastore.V1.Key
end

defmodule Google.Datastore.V1.RunQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type: {atom, any},
          project_id: String.t(),
          partition_id: Google.Datastore.V1.PartitionId.t() | nil,
          read_options: Google.Datastore.V1.ReadOptions.t() | nil
        }

  defstruct [:query_type, :project_id, :partition_id, :read_options]

  oneof :query_type, 0
  field :project_id, 8, type: :string
  field :partition_id, 2, type: Google.Datastore.V1.PartitionId
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions
  field :query, 3, type: Google.Datastore.V1.Query, oneof: 0
  field :gql_query, 7, type: Google.Datastore.V1.GqlQuery, oneof: 0
end

defmodule Google.Datastore.V1.RunQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch: Google.Datastore.V1.QueryResultBatch.t() | nil,
          query: Google.Datastore.V1.Query.t() | nil
        }

  defstruct [:batch, :query]

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

  defstruct [:project_id, :transaction_options]

  field :project_id, 8, type: :string
  field :transaction_options, 10, type: Google.Datastore.V1.TransactionOptions
end

defmodule Google.Datastore.V1.BeginTransactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction: binary
        }

  defstruct [:transaction]

  field :transaction, 1, type: :bytes
end

defmodule Google.Datastore.V1.RollbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          transaction: binary
        }

  defstruct [:project_id, :transaction]

  field :project_id, 8, type: :string
  field :transaction, 1, type: :bytes
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
          transaction_selector: {atom, any},
          project_id: String.t(),
          mode: Google.Datastore.V1.CommitRequest.Mode.t(),
          mutations: [Google.Datastore.V1.Mutation.t()]
        }

  defstruct [:transaction_selector, :project_id, :mode, :mutations]

  oneof :transaction_selector, 0
  field :project_id, 8, type: :string
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

  defstruct [:mutation_results, :index_updates]

  field :mutation_results, 3, repeated: true, type: Google.Datastore.V1.MutationResult
  field :index_updates, 4, type: :int32
end

defmodule Google.Datastore.V1.AllocateIdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct [:project_id, :keys]

  field :project_id, 8, type: :string
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key
end

defmodule Google.Datastore.V1.AllocateIdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Datastore.V1.Key.t()]
        }

  defstruct [:keys]

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

  defstruct [:project_id, :database_id, :keys]

  field :project_id, 8, type: :string
  field :database_id, 9, type: :string
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key
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
          operation: {atom, any},
          conflict_detection_strategy: {atom, any}
        }

  defstruct [:operation, :conflict_detection_strategy]

  oneof :operation, 0
  oneof :conflict_detection_strategy, 1
  field :insert, 4, type: Google.Datastore.V1.Entity, oneof: 0
  field :update, 5, type: Google.Datastore.V1.Entity, oneof: 0
  field :upsert, 6, type: Google.Datastore.V1.Entity, oneof: 0
  field :delete, 7, type: Google.Datastore.V1.Key, oneof: 0
  field :base_version, 8, type: :int64, oneof: 1
end

defmodule Google.Datastore.V1.MutationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Datastore.V1.Key.t() | nil,
          version: integer,
          conflict_detected: boolean
        }

  defstruct [:key, :version, :conflict_detected]

  field :key, 3, type: Google.Datastore.V1.Key
  field :version, 4, type: :int64
  field :conflict_detected, 5, type: :bool
end

defmodule Google.Datastore.V1.ReadOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_type: {atom, any}
        }

  defstruct [:consistency_type]

  oneof :consistency_type, 0

  field :read_consistency, 1,
    type: Google.Datastore.V1.ReadOptions.ReadConsistency,
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

  defstruct [:previous_transaction]

  field :previous_transaction, 1, type: :bytes
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
          mode: {atom, any}
        }

  defstruct [:mode]

  oneof :mode, 0
  field :read_write, 1, type: Google.Datastore.V1.TransactionOptions.ReadWrite, oneof: 0
  field :read_only, 2, type: Google.Datastore.V1.TransactionOptions.ReadOnly, oneof: 0
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

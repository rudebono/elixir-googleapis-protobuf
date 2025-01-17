defmodule Google.Datastore.V1beta3.CommitRequest.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :TRANSACTIONAL, 1
  field :NON_TRANSACTIONAL, 2
end

defmodule Google.Datastore.V1beta3.ReadOptions.ReadConsistency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :READ_CONSISTENCY_UNSPECIFIED, 0
  field :STRONG, 1
  field :EVENTUAL, 2
end

defmodule Google.Datastore.V1beta3.LookupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId"
  field :read_options, 1, type: Google.Datastore.V1beta3.ReadOptions, json_name: "readOptions"
  field :keys, 3, repeated: true, type: Google.Datastore.V1beta3.Key
end

defmodule Google.Datastore.V1beta3.LookupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :found, 1, repeated: true, type: Google.Datastore.V1beta3.EntityResult
  field :missing, 2, repeated: true, type: Google.Datastore.V1beta3.EntityResult
  field :deferred, 3, repeated: true, type: Google.Datastore.V1beta3.Key
end

defmodule Google.Datastore.V1beta3.RunQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :query_type, 0

  field :project_id, 8, type: :string, json_name: "projectId"
  field :partition_id, 2, type: Google.Datastore.V1beta3.PartitionId, json_name: "partitionId"
  field :read_options, 1, type: Google.Datastore.V1beta3.ReadOptions, json_name: "readOptions"
  field :query, 3, type: Google.Datastore.V1beta3.Query, oneof: 0
  field :gql_query, 7, type: Google.Datastore.V1beta3.GqlQuery, json_name: "gqlQuery", oneof: 0
end

defmodule Google.Datastore.V1beta3.RunQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :batch, 1, type: Google.Datastore.V1beta3.QueryResultBatch
  field :query, 2, type: Google.Datastore.V1beta3.Query
end

defmodule Google.Datastore.V1beta3.BeginTransactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId"

  field :transaction_options, 10,
    type: Google.Datastore.V1beta3.TransactionOptions,
    json_name: "transactionOptions"
end

defmodule Google.Datastore.V1beta3.BeginTransactionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transaction, 1, type: :bytes
end

defmodule Google.Datastore.V1beta3.RollbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId"
  field :transaction, 1, type: :bytes
end

defmodule Google.Datastore.V1beta3.RollbackResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Datastore.V1beta3.CommitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :transaction_selector, 0

  field :project_id, 8, type: :string, json_name: "projectId"
  field :mode, 5, type: Google.Datastore.V1beta3.CommitRequest.Mode, enum: true
  field :transaction, 1, type: :bytes, oneof: 0
  field :mutations, 6, repeated: true, type: Google.Datastore.V1beta3.Mutation
end

defmodule Google.Datastore.V1beta3.CommitResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mutation_results, 3,
    repeated: true,
    type: Google.Datastore.V1beta3.MutationResult,
    json_name: "mutationResults"

  field :index_updates, 4, type: :int32, json_name: "indexUpdates"
end

defmodule Google.Datastore.V1beta3.AllocateIdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId"
  field :keys, 1, repeated: true, type: Google.Datastore.V1beta3.Key
end

defmodule Google.Datastore.V1beta3.AllocateIdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Datastore.V1beta3.Key
end

defmodule Google.Datastore.V1beta3.ReserveIdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId"
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :keys, 1, repeated: true, type: Google.Datastore.V1beta3.Key
end

defmodule Google.Datastore.V1beta3.ReserveIdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Datastore.V1beta3.Mutation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :operation, 0

  oneof :conflict_detection_strategy, 1

  field :insert, 4, type: Google.Datastore.V1beta3.Entity, oneof: 0
  field :update, 5, type: Google.Datastore.V1beta3.Entity, oneof: 0
  field :upsert, 6, type: Google.Datastore.V1beta3.Entity, oneof: 0
  field :delete, 7, type: Google.Datastore.V1beta3.Key, oneof: 0
  field :base_version, 8, type: :int64, json_name: "baseVersion", oneof: 1
end

defmodule Google.Datastore.V1beta3.MutationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 3, type: Google.Datastore.V1beta3.Key
  field :version, 4, type: :int64
  field :conflict_detected, 5, type: :bool, json_name: "conflictDetected"
end

defmodule Google.Datastore.V1beta3.ReadOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :consistency_type, 0

  field :read_consistency, 1,
    type: Google.Datastore.V1beta3.ReadOptions.ReadConsistency,
    json_name: "readConsistency",
    enum: true,
    oneof: 0

  field :transaction, 2, type: :bytes, oneof: 0
end

defmodule Google.Datastore.V1beta3.TransactionOptions.ReadWrite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :previous_transaction, 1, type: :bytes, json_name: "previousTransaction"
end

defmodule Google.Datastore.V1beta3.TransactionOptions.ReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Datastore.V1beta3.TransactionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :mode, 0

  field :read_write, 1,
    type: Google.Datastore.V1beta3.TransactionOptions.ReadWrite,
    json_name: "readWrite",
    oneof: 0

  field :read_only, 2,
    type: Google.Datastore.V1beta3.TransactionOptions.ReadOnly,
    json_name: "readOnly",
    oneof: 0
end

defmodule Google.Datastore.V1beta3.Datastore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.datastore.v1beta3.Datastore",
    protoc_gen_elixir_version: "0.14.0"

  rpc :Lookup, Google.Datastore.V1beta3.LookupRequest, Google.Datastore.V1beta3.LookupResponse

  rpc :RunQuery,
      Google.Datastore.V1beta3.RunQueryRequest,
      Google.Datastore.V1beta3.RunQueryResponse

  rpc :BeginTransaction,
      Google.Datastore.V1beta3.BeginTransactionRequest,
      Google.Datastore.V1beta3.BeginTransactionResponse

  rpc :Commit, Google.Datastore.V1beta3.CommitRequest, Google.Datastore.V1beta3.CommitResponse

  rpc :Rollback,
      Google.Datastore.V1beta3.RollbackRequest,
      Google.Datastore.V1beta3.RollbackResponse

  rpc :AllocateIds,
      Google.Datastore.V1beta3.AllocateIdsRequest,
      Google.Datastore.V1beta3.AllocateIdsResponse

  rpc :ReserveIds,
      Google.Datastore.V1beta3.ReserveIdsRequest,
      Google.Datastore.V1beta3.ReserveIdsResponse
end

defmodule Google.Datastore.V1beta3.Datastore.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Datastore.V1beta3.Datastore.Service
end

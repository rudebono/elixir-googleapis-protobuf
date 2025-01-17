defmodule Google.Datastore.V1.CommitRequest.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :TRANSACTIONAL, 1
  field :NON_TRANSACTIONAL, 2
end

defmodule Google.Datastore.V1.Mutation.ConflictResolutionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STRATEGY_UNSPECIFIED, 0
  field :SERVER_VALUE, 1
  field :FAIL, 3
end

defmodule Google.Datastore.V1.PropertyTransform.ServerValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SERVER_VALUE_UNSPECIFIED, 0
  field :REQUEST_TIME, 1
end

defmodule Google.Datastore.V1.ReadOptions.ReadConsistency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :READ_CONSISTENCY_UNSPECIFIED, 0
  field :STRONG, 1
  field :EVENTUAL, 2
end

defmodule Google.Datastore.V1.LookupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions, json_name: "readOptions"
  field :keys, 3, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
  field :property_mask, 5, type: Google.Datastore.V1.PropertyMask, json_name: "propertyMask"
end

defmodule Google.Datastore.V1.LookupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :found, 1, repeated: true, type: Google.Datastore.V1.EntityResult
  field :missing, 2, repeated: true, type: Google.Datastore.V1.EntityResult
  field :deferred, 3, repeated: true, type: Google.Datastore.V1.Key
  field :transaction, 5, type: :bytes
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime"
end

defmodule Google.Datastore.V1.RunQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :query_type, 0

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :partition_id, 2, type: Google.Datastore.V1.PartitionId, json_name: "partitionId"
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions, json_name: "readOptions"
  field :query, 3, type: Google.Datastore.V1.Query, oneof: 0
  field :gql_query, 7, type: Google.Datastore.V1.GqlQuery, json_name: "gqlQuery", oneof: 0
  field :property_mask, 10, type: Google.Datastore.V1.PropertyMask, json_name: "propertyMask"

  field :explain_options, 12,
    type: Google.Datastore.V1.ExplainOptions,
    json_name: "explainOptions",
    deprecated: false
end

defmodule Google.Datastore.V1.RunQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :batch, 1, type: Google.Datastore.V1.QueryResultBatch
  field :query, 2, type: Google.Datastore.V1.Query
  field :transaction, 5, type: :bytes
  field :explain_metrics, 9, type: Google.Datastore.V1.ExplainMetrics, json_name: "explainMetrics"
end

defmodule Google.Datastore.V1.RunAggregationQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :query_type, 0

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :partition_id, 2, type: Google.Datastore.V1.PartitionId, json_name: "partitionId"
  field :read_options, 1, type: Google.Datastore.V1.ReadOptions, json_name: "readOptions"

  field :aggregation_query, 3,
    type: Google.Datastore.V1.AggregationQuery,
    json_name: "aggregationQuery",
    oneof: 0

  field :gql_query, 7, type: Google.Datastore.V1.GqlQuery, json_name: "gqlQuery", oneof: 0

  field :explain_options, 11,
    type: Google.Datastore.V1.ExplainOptions,
    json_name: "explainOptions",
    deprecated: false
end

defmodule Google.Datastore.V1.RunAggregationQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :batch, 1, type: Google.Datastore.V1.AggregationResultBatch
  field :query, 2, type: Google.Datastore.V1.AggregationQuery
  field :transaction, 5, type: :bytes
  field :explain_metrics, 9, type: Google.Datastore.V1.ExplainMetrics, json_name: "explainMetrics"
end

defmodule Google.Datastore.V1.BeginTransactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"

  field :transaction_options, 10,
    type: Google.Datastore.V1.TransactionOptions,
    json_name: "transactionOptions"
end

defmodule Google.Datastore.V1.BeginTransactionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transaction, 1, type: :bytes
end

defmodule Google.Datastore.V1.RollbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :transaction, 1, type: :bytes, deprecated: false
end

defmodule Google.Datastore.V1.RollbackResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Datastore.V1.CommitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :transaction_selector, 0

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :mode, 5, type: Google.Datastore.V1.CommitRequest.Mode, enum: true
  field :transaction, 1, type: :bytes, oneof: 0

  field :single_use_transaction, 10,
    type: Google.Datastore.V1.TransactionOptions,
    json_name: "singleUseTransaction",
    oneof: 0

  field :mutations, 6, repeated: true, type: Google.Datastore.V1.Mutation
end

defmodule Google.Datastore.V1.CommitResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mutation_results, 3,
    repeated: true,
    type: Google.Datastore.V1.MutationResult,
    json_name: "mutationResults"

  field :index_updates, 4, type: :int32, json_name: "indexUpdates"
  field :commit_time, 8, type: Google.Protobuf.Timestamp, json_name: "commitTime"
end

defmodule Google.Datastore.V1.AllocateIdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
end

defmodule Google.Datastore.V1.AllocateIdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key
end

defmodule Google.Datastore.V1.ReserveIdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 8, type: :string, json_name: "projectId", deprecated: false
  field :database_id, 9, type: :string, json_name: "databaseId"
  field :keys, 1, repeated: true, type: Google.Datastore.V1.Key, deprecated: false
end

defmodule Google.Datastore.V1.ReserveIdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Datastore.V1.Mutation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :operation, 0

  oneof :conflict_detection_strategy, 1

  field :insert, 4, type: Google.Datastore.V1.Entity, oneof: 0
  field :update, 5, type: Google.Datastore.V1.Entity, oneof: 0
  field :upsert, 6, type: Google.Datastore.V1.Entity, oneof: 0
  field :delete, 7, type: Google.Datastore.V1.Key, oneof: 0
  field :base_version, 8, type: :int64, json_name: "baseVersion", oneof: 1
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime", oneof: 1

  field :conflict_resolution_strategy, 10,
    type: Google.Datastore.V1.Mutation.ConflictResolutionStrategy,
    json_name: "conflictResolutionStrategy",
    enum: true

  field :property_mask, 9, type: Google.Datastore.V1.PropertyMask, json_name: "propertyMask"

  field :property_transforms, 12,
    repeated: true,
    type: Google.Datastore.V1.PropertyTransform,
    json_name: "propertyTransforms",
    deprecated: false
end

defmodule Google.Datastore.V1.PropertyTransform do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :transform_type, 0

  field :property, 1, type: :string, deprecated: false

  field :set_to_server_value, 2,
    type: Google.Datastore.V1.PropertyTransform.ServerValue,
    json_name: "setToServerValue",
    enum: true,
    oneof: 0

  field :increment, 3, type: Google.Datastore.V1.Value, oneof: 0
  field :maximum, 4, type: Google.Datastore.V1.Value, oneof: 0
  field :minimum, 5, type: Google.Datastore.V1.Value, oneof: 0

  field :append_missing_elements, 6,
    type: Google.Datastore.V1.ArrayValue,
    json_name: "appendMissingElements",
    oneof: 0

  field :remove_all_from_array, 7,
    type: Google.Datastore.V1.ArrayValue,
    json_name: "removeAllFromArray",
    oneof: 0
end

defmodule Google.Datastore.V1.MutationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 3, type: Google.Datastore.V1.Key
  field :version, 4, type: :int64
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :conflict_detected, 5, type: :bool, json_name: "conflictDetected"

  field :transform_results, 8,
    repeated: true,
    type: Google.Datastore.V1.Value,
    json_name: "transformResults"
end

defmodule Google.Datastore.V1.PropertyMask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :paths, 1, repeated: true, type: :string
end

defmodule Google.Datastore.V1.ReadOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :consistency_type, 0

  field :read_consistency, 1,
    type: Google.Datastore.V1.ReadOptions.ReadConsistency,
    json_name: "readConsistency",
    enum: true,
    oneof: 0

  field :transaction, 2, type: :bytes, oneof: 0

  field :new_transaction, 3,
    type: Google.Datastore.V1.TransactionOptions,
    json_name: "newTransaction",
    oneof: 0

  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end

defmodule Google.Datastore.V1.TransactionOptions.ReadWrite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :previous_transaction, 1, type: :bytes, json_name: "previousTransaction"
end

defmodule Google.Datastore.V1.TransactionOptions.ReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
end

defmodule Google.Datastore.V1.TransactionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use GRPC.Service, name: "google.datastore.v1.Datastore", protoc_gen_elixir_version: "0.14.0"

  rpc :Lookup, Google.Datastore.V1.LookupRequest, Google.Datastore.V1.LookupResponse

  rpc :RunQuery, Google.Datastore.V1.RunQueryRequest, Google.Datastore.V1.RunQueryResponse

  rpc :RunAggregationQuery,
      Google.Datastore.V1.RunAggregationQueryRequest,
      Google.Datastore.V1.RunAggregationQueryResponse

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

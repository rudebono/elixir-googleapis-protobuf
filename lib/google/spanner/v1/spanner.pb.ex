defmodule Google.Spanner.V1.RequestOptions.Priority do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :PRIORITY_LOW, 1
  field :PRIORITY_MEDIUM, 2
  field :PRIORITY_HIGH, 3
end
defmodule Google.Spanner.V1.ExecuteSqlRequest.QueryMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :NORMAL, 0
  field :PLAN, 1
  field :PROFILE, 2
end
defmodule Google.Spanner.V1.CreateSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Spanner.V1.Session, deprecated: false
end
defmodule Google.Spanner.V1.BatchCreateSessionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :session_template, 2, type: Google.Spanner.V1.Session, json_name: "sessionTemplate"
  field :session_count, 3, type: :int32, json_name: "sessionCount", deprecated: false
end
defmodule Google.Spanner.V1.BatchCreateSessionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, repeated: true, type: Google.Spanner.V1.Session
end
defmodule Google.Spanner.V1.Session.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Spanner.V1.Session do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :labels, 2, repeated: true, type: Google.Spanner.V1.Session.LabelsEntry, map: true

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :approximate_last_use_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "approximateLastUseTime",
    deprecated: false
end
defmodule Google.Spanner.V1.GetSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.V1.ListSessionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Spanner.V1.ListSessionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Spanner.V1.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.V1.DeleteSessionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.V1.RequestOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :priority, 1, type: Google.Spanner.V1.RequestOptions.Priority, enum: true
  field :request_tag, 2, type: :string, json_name: "requestTag"
  field :transaction_tag, 3, type: :string, json_name: "transactionTag"
end
defmodule Google.Spanner.V1.ExecuteSqlRequest.QueryOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :optimizer_version, 1, type: :string, json_name: "optimizerVersion"
  field :optimizer_statistics_package, 2, type: :string, json_name: "optimizerStatisticsPackage"
end
defmodule Google.Spanner.V1.ExecuteSqlRequest.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end
defmodule Google.Spanner.V1.ExecuteSqlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :sql, 3, type: :string, deprecated: false
  field :params, 4, type: Google.Protobuf.Struct

  field :param_types, 5,
    repeated: true,
    type: Google.Spanner.V1.ExecuteSqlRequest.ParamTypesEntry,
    json_name: "paramTypes",
    map: true

  field :resume_token, 6, type: :bytes, json_name: "resumeToken"

  field :query_mode, 7,
    type: Google.Spanner.V1.ExecuteSqlRequest.QueryMode,
    json_name: "queryMode",
    enum: true

  field :partition_token, 8, type: :bytes, json_name: "partitionToken"
  field :seqno, 9, type: :int64

  field :query_options, 10,
    type: Google.Spanner.V1.ExecuteSqlRequest.QueryOptions,
    json_name: "queryOptions"

  field :request_options, 11, type: Google.Spanner.V1.RequestOptions, json_name: "requestOptions"
end
defmodule Google.Spanner.V1.ExecuteBatchDmlRequest.Statement.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end
defmodule Google.Spanner.V1.ExecuteBatchDmlRequest.Statement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :sql, 1, type: :string, deprecated: false
  field :params, 2, type: Google.Protobuf.Struct

  field :param_types, 3,
    repeated: true,
    type: Google.Spanner.V1.ExecuteBatchDmlRequest.Statement.ParamTypesEntry,
    json_name: "paramTypes",
    map: true
end
defmodule Google.Spanner.V1.ExecuteBatchDmlRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector, deprecated: false

  field :statements, 3,
    repeated: true,
    type: Google.Spanner.V1.ExecuteBatchDmlRequest.Statement,
    deprecated: false

  field :seqno, 4, type: :int64, deprecated: false
  field :request_options, 5, type: Google.Spanner.V1.RequestOptions, json_name: "requestOptions"
end
defmodule Google.Spanner.V1.ExecuteBatchDmlResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :result_sets, 1,
    repeated: true,
    type: Google.Spanner.V1.ResultSet,
    json_name: "resultSets"

  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Spanner.V1.PartitionOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partition_size_bytes, 1, type: :int64, json_name: "partitionSizeBytes"
  field :max_partitions, 2, type: :int64, json_name: "maxPartitions"
end
defmodule Google.Spanner.V1.PartitionQueryRequest.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end
defmodule Google.Spanner.V1.PartitionQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :sql, 3, type: :string, deprecated: false
  field :params, 4, type: Google.Protobuf.Struct

  field :param_types, 5,
    repeated: true,
    type: Google.Spanner.V1.PartitionQueryRequest.ParamTypesEntry,
    json_name: "paramTypes",
    map: true

  field :partition_options, 6,
    type: Google.Spanner.V1.PartitionOptions,
    json_name: "partitionOptions"
end
defmodule Google.Spanner.V1.PartitionReadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :table, 3, type: :string, deprecated: false
  field :index, 4, type: :string
  field :columns, 5, repeated: true, type: :string
  field :key_set, 6, type: Google.Spanner.V1.KeySet, json_name: "keySet", deprecated: false

  field :partition_options, 9,
    type: Google.Spanner.V1.PartitionOptions,
    json_name: "partitionOptions"
end
defmodule Google.Spanner.V1.Partition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partition_token, 1, type: :bytes, json_name: "partitionToken"
end
defmodule Google.Spanner.V1.PartitionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partitions, 1, repeated: true, type: Google.Spanner.V1.Partition
  field :transaction, 2, type: Google.Spanner.V1.Transaction
end
defmodule Google.Spanner.V1.ReadRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :table, 3, type: :string, deprecated: false
  field :index, 4, type: :string
  field :columns, 5, repeated: true, type: :string, deprecated: false
  field :key_set, 6, type: Google.Spanner.V1.KeySet, json_name: "keySet", deprecated: false
  field :limit, 8, type: :int64
  field :resume_token, 9, type: :bytes, json_name: "resumeToken"
  field :partition_token, 10, type: :bytes, json_name: "partitionToken"
  field :request_options, 11, type: Google.Spanner.V1.RequestOptions, json_name: "requestOptions"
end
defmodule Google.Spanner.V1.BeginTransactionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :options, 2, type: Google.Spanner.V1.TransactionOptions, deprecated: false
  field :request_options, 3, type: Google.Spanner.V1.RequestOptions, json_name: "requestOptions"
end
defmodule Google.Spanner.V1.CommitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :transaction, 0

  field :session, 1, type: :string, deprecated: false
  field :transaction_id, 2, type: :bytes, json_name: "transactionId", oneof: 0

  field :single_use_transaction, 3,
    type: Google.Spanner.V1.TransactionOptions,
    json_name: "singleUseTransaction",
    oneof: 0

  field :mutations, 4, repeated: true, type: Google.Spanner.V1.Mutation
  field :return_commit_stats, 5, type: :bool, json_name: "returnCommitStats"
  field :request_options, 6, type: Google.Spanner.V1.RequestOptions, json_name: "requestOptions"
end
defmodule Google.Spanner.V1.RollbackRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :session, 1, type: :string, deprecated: false
  field :transaction_id, 2, type: :bytes, json_name: "transactionId", deprecated: false
end
defmodule Google.Spanner.V1.Spanner.Service do
  @moduledoc false
  use GRPC.Service, name: "google.spanner.v1.Spanner", protoc_gen_elixir_version: "0.10.0"

  rpc :CreateSession, Google.Spanner.V1.CreateSessionRequest, Google.Spanner.V1.Session

  rpc :BatchCreateSessions,
      Google.Spanner.V1.BatchCreateSessionsRequest,
      Google.Spanner.V1.BatchCreateSessionsResponse

  rpc :GetSession, Google.Spanner.V1.GetSessionRequest, Google.Spanner.V1.Session

  rpc :ListSessions, Google.Spanner.V1.ListSessionsRequest, Google.Spanner.V1.ListSessionsResponse

  rpc :DeleteSession, Google.Spanner.V1.DeleteSessionRequest, Google.Protobuf.Empty

  rpc :ExecuteSql, Google.Spanner.V1.ExecuteSqlRequest, Google.Spanner.V1.ResultSet

  rpc :ExecuteStreamingSql,
      Google.Spanner.V1.ExecuteSqlRequest,
      stream(Google.Spanner.V1.PartialResultSet)

  rpc :ExecuteBatchDml,
      Google.Spanner.V1.ExecuteBatchDmlRequest,
      Google.Spanner.V1.ExecuteBatchDmlResponse

  rpc :Read, Google.Spanner.V1.ReadRequest, Google.Spanner.V1.ResultSet

  rpc :StreamingRead, Google.Spanner.V1.ReadRequest, stream(Google.Spanner.V1.PartialResultSet)

  rpc :BeginTransaction, Google.Spanner.V1.BeginTransactionRequest, Google.Spanner.V1.Transaction

  rpc :Commit, Google.Spanner.V1.CommitRequest, Google.Spanner.V1.CommitResponse

  rpc :Rollback, Google.Spanner.V1.RollbackRequest, Google.Protobuf.Empty

  rpc :PartitionQuery,
      Google.Spanner.V1.PartitionQueryRequest,
      Google.Spanner.V1.PartitionResponse

  rpc :PartitionRead, Google.Spanner.V1.PartitionReadRequest, Google.Spanner.V1.PartitionResponse
end

defmodule Google.Spanner.V1.Spanner.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Spanner.V1.Spanner.Service
end

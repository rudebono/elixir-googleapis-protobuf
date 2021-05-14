defmodule Google.Spanner.V1.RequestOptions.Priority do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRIORITY_UNSPECIFIED | :PRIORITY_LOW | :PRIORITY_MEDIUM | :PRIORITY_HIGH

  field :PRIORITY_UNSPECIFIED, 0

  field :PRIORITY_LOW, 1

  field :PRIORITY_MEDIUM, 2

  field :PRIORITY_HIGH, 3
end

defmodule Google.Spanner.V1.ExecuteSqlRequest.QueryMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NORMAL | :PLAN | :PROFILE

  field :NORMAL, 0

  field :PLAN, 1

  field :PROFILE, 2
end

defmodule Google.Spanner.V1.CreateSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          session: Google.Spanner.V1.Session.t() | nil
        }

  defstruct [:database, :session]

  field :database, 1, type: :string
  field :session, 2, type: Google.Spanner.V1.Session
end

defmodule Google.Spanner.V1.BatchCreateSessionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          session_template: Google.Spanner.V1.Session.t() | nil,
          session_count: integer
        }

  defstruct [:database, :session_template, :session_count]

  field :database, 1, type: :string
  field :session_template, 2, type: Google.Spanner.V1.Session
  field :session_count, 3, type: :int32
end

defmodule Google.Spanner.V1.BatchCreateSessionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: [Google.Spanner.V1.Session.t()]
        }

  defstruct [:session]

  field :session, 1, repeated: true, type: Google.Spanner.V1.Session
end

defmodule Google.Spanner.V1.Session.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.V1.Session do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          approximate_last_use_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :labels, :create_time, :approximate_last_use_time]

  field :name, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Spanner.V1.Session.LabelsEntry, map: true
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :approximate_last_use_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Spanner.V1.GetSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Spanner.V1.ListSessionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:database, :page_size, :page_token, :filter]

  field :database, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Spanner.V1.ListSessionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sessions: [Google.Spanner.V1.Session.t()],
          next_page_token: String.t()
        }

  defstruct [:sessions, :next_page_token]

  field :sessions, 1, repeated: true, type: Google.Spanner.V1.Session
  field :next_page_token, 2, type: :string
end

defmodule Google.Spanner.V1.DeleteSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Spanner.V1.RequestOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          priority: Google.Spanner.V1.RequestOptions.Priority.t(),
          request_tag: String.t(),
          transaction_tag: String.t()
        }

  defstruct [:priority, :request_tag, :transaction_tag]

  field :priority, 1, type: Google.Spanner.V1.RequestOptions.Priority, enum: true
  field :request_tag, 2, type: :string
  field :transaction_tag, 3, type: :string
end

defmodule Google.Spanner.V1.ExecuteSqlRequest.QueryOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          optimizer_version: String.t(),
          optimizer_statistics_package: String.t()
        }

  defstruct [:optimizer_version, :optimizer_statistics_package]

  field :optimizer_version, 1, type: :string
  field :optimizer_statistics_package, 2, type: :string
end

defmodule Google.Spanner.V1.ExecuteSqlRequest.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Spanner.V1.Type.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.V1.ExecuteSqlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction: Google.Spanner.V1.TransactionSelector.t() | nil,
          sql: String.t(),
          params: Google.Protobuf.Struct.t() | nil,
          param_types: %{String.t() => Google.Spanner.V1.Type.t() | nil},
          resume_token: binary,
          query_mode: Google.Spanner.V1.ExecuteSqlRequest.QueryMode.t(),
          partition_token: binary,
          seqno: integer,
          query_options: Google.Spanner.V1.ExecuteSqlRequest.QueryOptions.t() | nil,
          request_options: Google.Spanner.V1.RequestOptions.t() | nil
        }

  defstruct [
    :session,
    :transaction,
    :sql,
    :params,
    :param_types,
    :resume_token,
    :query_mode,
    :partition_token,
    :seqno,
    :query_options,
    :request_options
  ]

  field :session, 1, type: :string
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :sql, 3, type: :string
  field :params, 4, type: Google.Protobuf.Struct

  field :param_types, 5,
    repeated: true,
    type: Google.Spanner.V1.ExecuteSqlRequest.ParamTypesEntry,
    map: true

  field :resume_token, 6, type: :bytes
  field :query_mode, 7, type: Google.Spanner.V1.ExecuteSqlRequest.QueryMode, enum: true
  field :partition_token, 8, type: :bytes
  field :seqno, 9, type: :int64
  field :query_options, 10, type: Google.Spanner.V1.ExecuteSqlRequest.QueryOptions
  field :request_options, 11, type: Google.Spanner.V1.RequestOptions
end

defmodule Google.Spanner.V1.ExecuteBatchDmlRequest.Statement.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Spanner.V1.Type.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.V1.ExecuteBatchDmlRequest.Statement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sql: String.t(),
          params: Google.Protobuf.Struct.t() | nil,
          param_types: %{String.t() => Google.Spanner.V1.Type.t() | nil}
        }

  defstruct [:sql, :params, :param_types]

  field :sql, 1, type: :string
  field :params, 2, type: Google.Protobuf.Struct

  field :param_types, 3,
    repeated: true,
    type: Google.Spanner.V1.ExecuteBatchDmlRequest.Statement.ParamTypesEntry,
    map: true
end

defmodule Google.Spanner.V1.ExecuteBatchDmlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction: Google.Spanner.V1.TransactionSelector.t() | nil,
          statements: [Google.Spanner.V1.ExecuteBatchDmlRequest.Statement.t()],
          seqno: integer,
          request_options: Google.Spanner.V1.RequestOptions.t() | nil
        }

  defstruct [:session, :transaction, :statements, :seqno, :request_options]

  field :session, 1, type: :string
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :statements, 3, repeated: true, type: Google.Spanner.V1.ExecuteBatchDmlRequest.Statement
  field :seqno, 4, type: :int64
  field :request_options, 5, type: Google.Spanner.V1.RequestOptions
end

defmodule Google.Spanner.V1.ExecuteBatchDmlResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result_sets: [Google.Spanner.V1.ResultSet.t()],
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:result_sets, :status]

  field :result_sets, 1, repeated: true, type: Google.Spanner.V1.ResultSet
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Spanner.V1.PartitionOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_size_bytes: integer,
          max_partitions: integer
        }

  defstruct [:partition_size_bytes, :max_partitions]

  field :partition_size_bytes, 1, type: :int64
  field :max_partitions, 2, type: :int64
end

defmodule Google.Spanner.V1.PartitionQueryRequest.ParamTypesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Spanner.V1.Type.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.V1.PartitionQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction: Google.Spanner.V1.TransactionSelector.t() | nil,
          sql: String.t(),
          params: Google.Protobuf.Struct.t() | nil,
          param_types: %{String.t() => Google.Spanner.V1.Type.t() | nil},
          partition_options: Google.Spanner.V1.PartitionOptions.t() | nil
        }

  defstruct [:session, :transaction, :sql, :params, :param_types, :partition_options]

  field :session, 1, type: :string
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :sql, 3, type: :string
  field :params, 4, type: Google.Protobuf.Struct

  field :param_types, 5,
    repeated: true,
    type: Google.Spanner.V1.PartitionQueryRequest.ParamTypesEntry,
    map: true

  field :partition_options, 6, type: Google.Spanner.V1.PartitionOptions
end

defmodule Google.Spanner.V1.PartitionReadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction: Google.Spanner.V1.TransactionSelector.t() | nil,
          table: String.t(),
          index: String.t(),
          columns: [String.t()],
          key_set: Google.Spanner.V1.KeySet.t() | nil,
          partition_options: Google.Spanner.V1.PartitionOptions.t() | nil
        }

  defstruct [:session, :transaction, :table, :index, :columns, :key_set, :partition_options]

  field :session, 1, type: :string
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :table, 3, type: :string
  field :index, 4, type: :string
  field :columns, 5, repeated: true, type: :string
  field :key_set, 6, type: Google.Spanner.V1.KeySet
  field :partition_options, 9, type: Google.Spanner.V1.PartitionOptions
end

defmodule Google.Spanner.V1.Partition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_token: binary
        }

  defstruct [:partition_token]

  field :partition_token, 1, type: :bytes
end

defmodule Google.Spanner.V1.PartitionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partitions: [Google.Spanner.V1.Partition.t()],
          transaction: Google.Spanner.V1.Transaction.t() | nil
        }

  defstruct [:partitions, :transaction]

  field :partitions, 1, repeated: true, type: Google.Spanner.V1.Partition
  field :transaction, 2, type: Google.Spanner.V1.Transaction
end

defmodule Google.Spanner.V1.ReadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction: Google.Spanner.V1.TransactionSelector.t() | nil,
          table: String.t(),
          index: String.t(),
          columns: [String.t()],
          key_set: Google.Spanner.V1.KeySet.t() | nil,
          limit: integer,
          resume_token: binary,
          partition_token: binary,
          request_options: Google.Spanner.V1.RequestOptions.t() | nil
        }

  defstruct [
    :session,
    :transaction,
    :table,
    :index,
    :columns,
    :key_set,
    :limit,
    :resume_token,
    :partition_token,
    :request_options
  ]

  field :session, 1, type: :string
  field :transaction, 2, type: Google.Spanner.V1.TransactionSelector
  field :table, 3, type: :string
  field :index, 4, type: :string
  field :columns, 5, repeated: true, type: :string
  field :key_set, 6, type: Google.Spanner.V1.KeySet
  field :limit, 8, type: :int64
  field :resume_token, 9, type: :bytes
  field :partition_token, 10, type: :bytes
  field :request_options, 11, type: Google.Spanner.V1.RequestOptions
end

defmodule Google.Spanner.V1.BeginTransactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          options: Google.Spanner.V1.TransactionOptions.t() | nil,
          request_options: Google.Spanner.V1.RequestOptions.t() | nil
        }

  defstruct [:session, :options, :request_options]

  field :session, 1, type: :string
  field :options, 2, type: Google.Spanner.V1.TransactionOptions
  field :request_options, 3, type: Google.Spanner.V1.RequestOptions
end

defmodule Google.Spanner.V1.CommitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction: {atom, any},
          session: String.t(),
          mutations: [Google.Spanner.V1.Mutation.t()],
          return_commit_stats: boolean,
          request_options: Google.Spanner.V1.RequestOptions.t() | nil
        }

  defstruct [:transaction, :session, :mutations, :return_commit_stats, :request_options]

  oneof :transaction, 0
  field :session, 1, type: :string
  field :transaction_id, 2, type: :bytes, oneof: 0
  field :single_use_transaction, 3, type: Google.Spanner.V1.TransactionOptions, oneof: 0
  field :mutations, 4, repeated: true, type: Google.Spanner.V1.Mutation
  field :return_commit_stats, 5, type: :bool
  field :request_options, 6, type: Google.Spanner.V1.RequestOptions
end

defmodule Google.Spanner.V1.RollbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          transaction_id: binary
        }

  defstruct [:session, :transaction_id]

  field :session, 1, type: :string
  field :transaction_id, 2, type: :bytes
end

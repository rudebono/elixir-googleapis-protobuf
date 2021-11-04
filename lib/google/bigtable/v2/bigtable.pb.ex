defmodule Google.Bigtable.V2.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t(),
          rows: Google.Bigtable.V2.RowSet.t() | nil,
          filter: Google.Bigtable.V2.RowFilter.t() | nil,
          rows_limit: integer
        }

  defstruct [:table_name, :app_profile_id, :rows, :filter, :rows_limit]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 5, type: :string, json_name: "appProfileId"
  field :rows, 2, type: Google.Bigtable.V2.RowSet
  field :filter, 3, type: Google.Bigtable.V2.RowFilter
  field :rows_limit, 4, type: :int64, json_name: "rowsLimit"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.ReadRowsResponse.CellChunk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_status: {:reset_row, boolean} | {:commit_row, boolean},
          row_key: binary,
          family_name: Google.Protobuf.StringValue.t() | nil,
          qualifier: Google.Protobuf.BytesValue.t() | nil,
          timestamp_micros: integer,
          labels: [String.t()],
          value: binary,
          value_size: integer
        }

  defstruct [
    :row_status,
    :row_key,
    :family_name,
    :qualifier,
    :timestamp_micros,
    :labels,
    :value,
    :value_size
  ]

  oneof :row_status, 0

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :family_name, 2, type: Google.Protobuf.StringValue, json_name: "familyName"
  field :qualifier, 3, type: Google.Protobuf.BytesValue
  field :timestamp_micros, 4, type: :int64, json_name: "timestampMicros"
  field :labels, 5, repeated: true, type: :string
  field :value, 6, type: :bytes
  field :value_size, 7, type: :int32, json_name: "valueSize"
  field :reset_row, 8, type: :bool, json_name: "resetRow", oneof: 0
  field :commit_row, 9, type: :bool, json_name: "commitRow", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          chunks: [Google.Bigtable.V2.ReadRowsResponse.CellChunk.t()],
          last_scanned_row_key: binary
        }

  defstruct [:chunks, :last_scanned_row_key]

  field :chunks, 1, repeated: true, type: Google.Bigtable.V2.ReadRowsResponse.CellChunk
  field :last_scanned_row_key, 2, type: :bytes, json_name: "lastScannedRowKey"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.SampleRowKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t()
        }

  defstruct [:table_name, :app_profile_id]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.SampleRowKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_key: binary,
          offset_bytes: integer
        }

  defstruct [:row_key, :offset_bytes]

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :offset_bytes, 2, type: :int64, json_name: "offsetBytes"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t(),
          row_key: binary,
          mutations: [Google.Bigtable.V2.Mutation.t()]
        }

  defstruct [:table_name, :app_profile_id, :row_key, :mutations]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey"
  field :mutations, 3, repeated: true, type: Google.Bigtable.V2.Mutation

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowsRequest.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_key: binary,
          mutations: [Google.Bigtable.V2.Mutation.t()]
        }

  defstruct [:row_key, :mutations]

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :mutations, 2, repeated: true, type: Google.Bigtable.V2.Mutation

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t(),
          entries: [Google.Bigtable.V2.MutateRowsRequest.Entry.t()]
        }

  defstruct [:table_name, :app_profile_id, :entries]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 3, type: :string, json_name: "appProfileId"
  field :entries, 2, repeated: true, type: Google.Bigtable.V2.MutateRowsRequest.Entry

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowsResponse.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:index, :status]

  field :index, 1, type: :int64
  field :status, 2, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.MutateRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Bigtable.V2.MutateRowsResponse.Entry.t()]
        }

  defstruct [:entries]

  field :entries, 1, repeated: true, type: Google.Bigtable.V2.MutateRowsResponse.Entry

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.CheckAndMutateRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t(),
          row_key: binary,
          predicate_filter: Google.Bigtable.V2.RowFilter.t() | nil,
          true_mutations: [Google.Bigtable.V2.Mutation.t()],
          false_mutations: [Google.Bigtable.V2.Mutation.t()]
        }

  defstruct [
    :table_name,
    :app_profile_id,
    :row_key,
    :predicate_filter,
    :true_mutations,
    :false_mutations
  ]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 7, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey"
  field :predicate_filter, 6, type: Google.Bigtable.V2.RowFilter, json_name: "predicateFilter"

  field :true_mutations, 4,
    repeated: true,
    type: Google.Bigtable.V2.Mutation,
    json_name: "trueMutations"

  field :false_mutations, 5,
    repeated: true,
    type: Google.Bigtable.V2.Mutation,
    json_name: "falseMutations"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.CheckAndMutateRowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predicate_matched: boolean
        }

  defstruct [:predicate_matched]

  field :predicate_matched, 1, type: :bool, json_name: "predicateMatched"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          app_profile_id: String.t(),
          row_key: binary,
          rules: [Google.Bigtable.V2.ReadModifyWriteRule.t()]
        }

  defstruct [:table_name, :app_profile_id, :row_key, :rules]

  field :table_name, 1, type: :string, json_name: "tableName"
  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey"
  field :rules, 3, repeated: true, type: Google.Bigtable.V2.ReadModifyWriteRule

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row: Google.Bigtable.V2.Row.t() | nil
        }

  defstruct [:row]

  field :row, 1, type: Google.Bigtable.V2.Row

  def transform_module(), do: nil
end

defmodule Google.Bigtable.V2.Bigtable.Service do
  @moduledoc false
  use GRPC.Service, name: "google.bigtable.v2.Bigtable"

  rpc :ReadRows, Google.Bigtable.V2.ReadRowsRequest, stream(Google.Bigtable.V2.ReadRowsResponse)

  rpc :SampleRowKeys,
      Google.Bigtable.V2.SampleRowKeysRequest,
      stream(Google.Bigtable.V2.SampleRowKeysResponse)

  rpc :MutateRow, Google.Bigtable.V2.MutateRowRequest, Google.Bigtable.V2.MutateRowResponse

  rpc :MutateRows,
      Google.Bigtable.V2.MutateRowsRequest,
      stream(Google.Bigtable.V2.MutateRowsResponse)

  rpc :CheckAndMutateRow,
      Google.Bigtable.V2.CheckAndMutateRowRequest,
      Google.Bigtable.V2.CheckAndMutateRowResponse

  rpc :ReadModifyWriteRow,
      Google.Bigtable.V2.ReadModifyWriteRowRequest,
      Google.Bigtable.V2.ReadModifyWriteRowResponse
end

defmodule Google.Bigtable.V2.Bigtable.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Bigtable.V2.Bigtable.Service
end

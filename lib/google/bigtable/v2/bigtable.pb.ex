defmodule Google.Bigtable.V2.ReadRowsRequest.RequestStatsView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REQUEST_STATS_VIEW_UNSPECIFIED, 0
  field :REQUEST_STATS_NONE, 1
  field :REQUEST_STATS_FULL, 2
end

defmodule Google.Bigtable.V2.ReadRowsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 5, type: :string, json_name: "appProfileId"
  field :rows, 2, type: Google.Bigtable.V2.RowSet
  field :filter, 3, type: Google.Bigtable.V2.RowFilter
  field :rows_limit, 4, type: :int64, json_name: "rowsLimit"

  field :request_stats_view, 6,
    type: Google.Bigtable.V2.ReadRowsRequest.RequestStatsView,
    json_name: "requestStatsView",
    enum: true
end

defmodule Google.Bigtable.V2.ReadRowsResponse.CellChunk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Bigtable.V2.ReadRowsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Bigtable.V2.ReadRowsResponse.CellChunk
  field :last_scanned_row_key, 2, type: :bytes, json_name: "lastScannedRowKey"
  field :request_stats, 3, type: Google.Bigtable.V2.RequestStats, json_name: "requestStats"
end

defmodule Google.Bigtable.V2.SampleRowKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
end

defmodule Google.Bigtable.V2.SampleRowKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :offset_bytes, 2, type: :int64, json_name: "offsetBytes"
end

defmodule Google.Bigtable.V2.MutateRowRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey", deprecated: false
  field :mutations, 3, repeated: true, type: Google.Bigtable.V2.Mutation, deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Bigtable.V2.MutateRowsRequest.Entry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :mutations, 2, repeated: true, type: Google.Bigtable.V2.Mutation, deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 3, type: :string, json_name: "appProfileId"

  field :entries, 2,
    repeated: true,
    type: Google.Bigtable.V2.MutateRowsRequest.Entry,
    deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowsResponse.Entry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :int64
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Bigtable.V2.MutateRowsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Bigtable.V2.MutateRowsResponse.Entry
end

defmodule Google.Bigtable.V2.CheckAndMutateRowRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 7, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey", deprecated: false
  field :predicate_filter, 6, type: Google.Bigtable.V2.RowFilter, json_name: "predicateFilter"

  field :true_mutations, 4,
    repeated: true,
    type: Google.Bigtable.V2.Mutation,
    json_name: "trueMutations"

  field :false_mutations, 5,
    repeated: true,
    type: Google.Bigtable.V2.Mutation,
    json_name: "falseMutations"
end

defmodule Google.Bigtable.V2.CheckAndMutateRowResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :predicate_matched, 1, type: :bool, json_name: "predicateMatched"
end

defmodule Google.Bigtable.V2.PingAndWarmRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
end

defmodule Google.Bigtable.V2.PingAndWarmResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey", deprecated: false
  field :rules, 3, repeated: true, type: Google.Bigtable.V2.ReadModifyWriteRule, deprecated: false
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row, 1, type: Google.Bigtable.V2.Row
end

defmodule Google.Bigtable.V2.Bigtable.Service do
  @moduledoc false
  use GRPC.Service, name: "google.bigtable.v2.Bigtable", protoc_gen_elixir_version: "0.11.0"

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

  rpc :PingAndWarm, Google.Bigtable.V2.PingAndWarmRequest, Google.Bigtable.V2.PingAndWarmResponse

  rpc :ReadModifyWriteRow,
      Google.Bigtable.V2.ReadModifyWriteRowRequest,
      Google.Bigtable.V2.ReadModifyWriteRowResponse
end

defmodule Google.Bigtable.V2.Bigtable.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Bigtable.V2.Bigtable.Service
end
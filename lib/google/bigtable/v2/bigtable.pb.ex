defmodule Google.Bigtable.V2.ReadRowsRequest.RequestStatsView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :REQUEST_STATS_VIEW_UNSPECIFIED, 0
  field :REQUEST_STATS_NONE, 1
  field :REQUEST_STATS_FULL, 2
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.DataChange.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :GARBAGE_COLLECTION, 2
  field :CONTINUATION, 3
end

defmodule Google.Bigtable.V2.ReadRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 9,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

  field :app_profile_id, 5, type: :string, json_name: "appProfileId"
  field :rows, 2, type: Google.Bigtable.V2.RowSet
  field :filter, 3, type: Google.Bigtable.V2.RowFilter
  field :rows_limit, 4, type: :int64, json_name: "rowsLimit"

  field :request_stats_view, 6,
    type: Google.Bigtable.V2.ReadRowsRequest.RequestStatsView,
    json_name: "requestStatsView",
    enum: true

  field :reversed, 7, type: :bool
end

defmodule Google.Bigtable.V2.ReadRowsResponse.CellChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunks, 1, repeated: true, type: Google.Bigtable.V2.ReadRowsResponse.CellChunk
  field :last_scanned_row_key, 2, type: :bytes, json_name: "lastScannedRowKey"
  field :request_stats, 3, type: Google.Bigtable.V2.RequestStats, json_name: "requestStats"
end

defmodule Google.Bigtable.V2.SampleRowKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 4,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
end

defmodule Google.Bigtable.V2.SampleRowKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :offset_bytes, 2, type: :int64, json_name: "offsetBytes"
end

defmodule Google.Bigtable.V2.MutateRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 6,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey", deprecated: false
  field :mutations, 3, repeated: true, type: Google.Bigtable.V2.Mutation, deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Bigtable.V2.MutateRowsRequest.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :row_key, 1, type: :bytes, json_name: "rowKey"
  field :mutations, 2, repeated: true, type: Google.Bigtable.V2.Mutation, deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 5,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

  field :app_profile_id, 3, type: :string, json_name: "appProfileId"

  field :entries, 2,
    repeated: true,
    type: Google.Bigtable.V2.MutateRowsRequest.Entry,
    deprecated: false
end

defmodule Google.Bigtable.V2.MutateRowsResponse.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index, 1, type: :int64
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Bigtable.V2.MutateRowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Bigtable.V2.MutateRowsResponse.Entry

  field :rate_limit_info, 3,
    proto3_optional: true,
    type: Google.Bigtable.V2.RateLimitInfo,
    json_name: "rateLimitInfo"
end

defmodule Google.Bigtable.V2.RateLimitInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :period, 1, type: Google.Protobuf.Duration
  field :factor, 2, type: :double
end

defmodule Google.Bigtable.V2.CheckAndMutateRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 9,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :predicate_matched, 1, type: :bool, json_name: "predicateMatched"
end

defmodule Google.Bigtable.V2.PingAndWarmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
end

defmodule Google.Bigtable.V2.PingAndWarmResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false

  field :authorized_view_name, 6,
    type: :string,
    json_name: "authorizedViewName",
    deprecated: false

  field :app_profile_id, 4, type: :string, json_name: "appProfileId"
  field :row_key, 2, type: :bytes, json_name: "rowKey", deprecated: false
  field :rules, 3, repeated: true, type: Google.Bigtable.V2.ReadModifyWriteRule, deprecated: false
end

defmodule Google.Bigtable.V2.ReadModifyWriteRowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :row, 1, type: Google.Bigtable.V2.Row
end

defmodule Google.Bigtable.V2.GenerateInitialChangeStreamPartitionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
end

defmodule Google.Bigtable.V2.GenerateInitialChangeStreamPartitionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partition, 1, type: Google.Bigtable.V2.StreamPartition
end

defmodule Google.Bigtable.V2.ReadChangeStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :start_from, 0

  field :table_name, 1, type: :string, json_name: "tableName", deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
  field :partition, 3, type: Google.Bigtable.V2.StreamPartition
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", oneof: 0

  field :continuation_tokens, 6,
    type: Google.Bigtable.V2.StreamContinuationTokens,
    json_name: "continuationTokens",
    oneof: 0

  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :heartbeat_duration, 7, type: Google.Protobuf.Duration, json_name: "heartbeatDuration"
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.MutationChunk.ChunkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunked_value_size, 1, type: :int32, json_name: "chunkedValueSize"
  field :chunked_value_offset, 2, type: :int32, json_name: "chunkedValueOffset"
  field :last_chunk, 3, type: :bool, json_name: "lastChunk"
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.MutationChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chunk_info, 1,
    type: Google.Bigtable.V2.ReadChangeStreamResponse.MutationChunk.ChunkInfo,
    json_name: "chunkInfo"

  field :mutation, 2, type: Google.Bigtable.V2.Mutation
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.DataChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Bigtable.V2.ReadChangeStreamResponse.DataChange.Type, enum: true
  field :source_cluster_id, 2, type: :string, json_name: "sourceClusterId"
  field :row_key, 3, type: :bytes, json_name: "rowKey"
  field :commit_timestamp, 4, type: Google.Protobuf.Timestamp, json_name: "commitTimestamp"
  field :tiebreaker, 5, type: :int32

  field :chunks, 6,
    repeated: true,
    type: Google.Bigtable.V2.ReadChangeStreamResponse.MutationChunk

  field :done, 8, type: :bool
  field :token, 9, type: :string

  field :estimated_low_watermark, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "estimatedLowWatermark"
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.Heartbeat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :continuation_token, 1,
    type: Google.Bigtable.V2.StreamContinuationToken,
    json_name: "continuationToken"

  field :estimated_low_watermark, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "estimatedLowWatermark"
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse.CloseStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status

  field :continuation_tokens, 2,
    repeated: true,
    type: Google.Bigtable.V2.StreamContinuationToken,
    json_name: "continuationTokens"

  field :new_partitions, 3,
    repeated: true,
    type: Google.Bigtable.V2.StreamPartition,
    json_name: "newPartitions"
end

defmodule Google.Bigtable.V2.ReadChangeStreamResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :stream_record, 0

  field :data_change, 1,
    type: Google.Bigtable.V2.ReadChangeStreamResponse.DataChange,
    json_name: "dataChange",
    oneof: 0

  field :heartbeat, 2, type: Google.Bigtable.V2.ReadChangeStreamResponse.Heartbeat, oneof: 0

  field :close_stream, 3,
    type: Google.Bigtable.V2.ReadChangeStreamResponse.CloseStream,
    json_name: "closeStream",
    oneof: 0
end

defmodule Google.Bigtable.V2.ExecuteQueryRequest.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.V2.Value
end

defmodule Google.Bigtable.V2.ExecuteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data_format, 0

  field :instance_name, 1, type: :string, json_name: "instanceName", deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId", deprecated: false
  field :query, 3, type: :string, deprecated: false
  field :proto_format, 4, type: Google.Bigtable.V2.ProtoFormat, json_name: "protoFormat", oneof: 0
  field :resume_token, 8, type: :bytes, json_name: "resumeToken", deprecated: false

  field :params, 7,
    repeated: true,
    type: Google.Bigtable.V2.ExecuteQueryRequest.ParamsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Bigtable.V2.ExecuteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :response, 0

  field :metadata, 1, type: Google.Bigtable.V2.ResultSetMetadata, oneof: 0
  field :results, 2, type: Google.Bigtable.V2.PartialResultSet, oneof: 0
end

defmodule Google.Bigtable.V2.Bigtable.Service do
  @moduledoc false

  use GRPC.Service, name: "google.bigtable.v2.Bigtable", protoc_gen_elixir_version: "0.13.0"

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

  rpc :GenerateInitialChangeStreamPartitions,
      Google.Bigtable.V2.GenerateInitialChangeStreamPartitionsRequest,
      stream(Google.Bigtable.V2.GenerateInitialChangeStreamPartitionsResponse)

  rpc :ReadChangeStream,
      Google.Bigtable.V2.ReadChangeStreamRequest,
      stream(Google.Bigtable.V2.ReadChangeStreamResponse)

  rpc :ExecuteQuery,
      Google.Bigtable.V2.ExecuteQueryRequest,
      stream(Google.Bigtable.V2.ExecuteQueryResponse)
end

defmodule Google.Bigtable.V2.Bigtable.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Bigtable.V2.Bigtable.Service
end
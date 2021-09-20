defmodule Google.Cloud.Bigquery.Storage.V1.StorageError.StorageErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STORAGE_ERROR_CODE_UNSPECIFIED
          | :TABLE_NOT_FOUND
          | :STREAM_ALREADY_COMMITTED
          | :STREAM_NOT_FOUND
          | :INVALID_STREAM_TYPE
          | :INVALID_STREAM_STATE
          | :STREAM_FINALIZED
          | :SCHEMA_MISMATCH_EXTRA_FIELDS

  field :STORAGE_ERROR_CODE_UNSPECIFIED, 0

  field :TABLE_NOT_FOUND, 1

  field :STREAM_ALREADY_COMMITTED, 2

  field :STREAM_NOT_FOUND, 3

  field :INVALID_STREAM_TYPE, 4

  field :INVALID_STREAM_STATE, 5

  field :STREAM_FINALIZED, 6

  field :SCHEMA_MISMATCH_EXTRA_FIELDS, 7
end

defmodule Google.Cloud.Bigquery.Storage.V1.CreateReadSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_session: Google.Cloud.Bigquery.Storage.V1.ReadSession.t() | nil,
          max_stream_count: integer
        }

  defstruct [:parent, :read_session, :max_stream_count]

  field :parent, 1, type: :string
  field :read_session, 2, type: Google.Cloud.Bigquery.Storage.V1.ReadSession
  field :max_stream_count, 3, type: :int32
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_stream: String.t(),
          offset: integer
        }

  defstruct [:read_stream, :offset]

  field :read_stream, 1, type: :string
  field :offset, 2, type: :int64
end

defmodule Google.Cloud.Bigquery.Storage.V1.ThrottleState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throttle_percent: integer
        }

  defstruct [:throttle_percent]

  field :throttle_percent, 1, type: :int32
end

defmodule Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at_response_start: float | :infinity | :negative_infinity | :nan,
          at_response_end: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:at_response_start, :at_response_end]

  field :at_response_start, 1, type: :double
  field :at_response_end, 2, type: :double
end

defmodule Google.Cloud.Bigquery.Storage.V1.StreamStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress: Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress.t() | nil
        }

  defstruct [:progress]

  field :progress, 2, type: Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: {atom, any},
          schema: {atom, any},
          row_count: integer,
          stats: Google.Cloud.Bigquery.Storage.V1.StreamStats.t() | nil,
          throttle_state: Google.Cloud.Bigquery.Storage.V1.ThrottleState.t() | nil
        }

  defstruct [:rows, :schema, :row_count, :stats, :throttle_state]

  oneof :rows, 0
  oneof :schema, 1
  field :avro_rows, 3, type: Google.Cloud.Bigquery.Storage.V1.AvroRows, oneof: 0
  field :arrow_record_batch, 4, type: Google.Cloud.Bigquery.Storage.V1.ArrowRecordBatch, oneof: 0
  field :row_count, 6, type: :int64
  field :stats, 2, type: Google.Cloud.Bigquery.Storage.V1.StreamStats
  field :throttle_state, 5, type: Google.Cloud.Bigquery.Storage.V1.ThrottleState
  field :avro_schema, 7, type: Google.Cloud.Bigquery.Storage.V1.AvroSchema, oneof: 1
  field :arrow_schema, 8, type: Google.Cloud.Bigquery.Storage.V1.ArrowSchema, oneof: 1
end

defmodule Google.Cloud.Bigquery.Storage.V1.SplitReadStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :fraction]

  field :name, 1, type: :string
  field :fraction, 2, type: :double
end

defmodule Google.Cloud.Bigquery.Storage.V1.SplitReadStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_stream: Google.Cloud.Bigquery.Storage.V1.ReadStream.t() | nil,
          remainder_stream: Google.Cloud.Bigquery.Storage.V1.ReadStream.t() | nil
        }

  defstruct [:primary_stream, :remainder_stream]

  field :primary_stream, 1, type: Google.Cloud.Bigquery.Storage.V1.ReadStream
  field :remainder_stream, 2, type: Google.Cloud.Bigquery.Storage.V1.ReadStream
end

defmodule Google.Cloud.Bigquery.Storage.V1.CreateWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_stream: Google.Cloud.Bigquery.Storage.V1.WriteStream.t() | nil
        }

  defstruct [:parent, :write_stream]

  field :parent, 1, type: :string
  field :write_stream, 2, type: Google.Cloud.Bigquery.Storage.V1.WriteStream
end

defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest.ProtoData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          writer_schema: Google.Cloud.Bigquery.Storage.V1.ProtoSchema.t() | nil,
          rows: Google.Cloud.Bigquery.Storage.V1.ProtoRows.t() | nil
        }

  defstruct [:writer_schema, :rows]

  field :writer_schema, 1, type: Google.Cloud.Bigquery.Storage.V1.ProtoSchema
  field :rows, 2, type: Google.Cloud.Bigquery.Storage.V1.ProtoRows
end

defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: {atom, any},
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil,
          trace_id: String.t()
        }

  defstruct [:rows, :write_stream, :offset, :trace_id]

  oneof :rows, 0
  field :write_stream, 1, type: :string
  field :offset, 2, type: Google.Protobuf.Int64Value

  field :proto_rows, 4,
    type: Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest.ProtoData,
    oneof: 0

  field :trace_id, 6, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse.AppendResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:offset]

  field :offset, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any},
          updated_schema: Google.Cloud.Bigquery.Storage.V1.TableSchema.t() | nil
        }

  defstruct [:response, :updated_schema]

  oneof :response, 0

  field :append_result, 1,
    type: Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse.AppendResult,
    oneof: 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :updated_schema, 3, type: Google.Cloud.Bigquery.Storage.V1.TableSchema
end

defmodule Google.Cloud.Bigquery.Storage.V1.GetWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_streams: [String.t()]
        }

  defstruct [:parent, :write_streams]

  field :parent, 1, type: :string
  field :write_streams, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commit_time: Google.Protobuf.Timestamp.t() | nil,
          stream_errors: [Google.Cloud.Bigquery.Storage.V1.StorageError.t()]
        }

  defstruct [:commit_time, :stream_errors]

  field :commit_time, 1, type: Google.Protobuf.Timestamp
  field :stream_errors, 2, repeated: true, type: Google.Cloud.Bigquery.Storage.V1.StorageError
end

defmodule Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_count: integer
        }

  defstruct [:row_count]

  field :row_count, 1, type: :int64
end

defmodule Google.Cloud.Bigquery.Storage.V1.FlushRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:write_stream, :offset]

  field :write_stream, 1, type: :string
  field :offset, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Cloud.Bigquery.Storage.V1.FlushRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer
        }

  defstruct [:offset]

  field :offset, 1, type: :int64
end

defmodule Google.Cloud.Bigquery.Storage.V1.StorageError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Bigquery.Storage.V1.StorageError.StorageErrorCode.t(),
          entity: String.t(),
          error_message: String.t()
        }

  defstruct [:code, :entity, :error_message]

  field :code, 1, type: Google.Cloud.Bigquery.Storage.V1.StorageError.StorageErrorCode, enum: true
  field :entity, 2, type: :string
  field :error_message, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.BigQueryRead.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.storage.v1.BigQueryRead"

  rpc :CreateReadSession,
      Google.Cloud.Bigquery.Storage.V1.CreateReadSessionRequest,
      Google.Cloud.Bigquery.Storage.V1.ReadSession

  rpc :ReadRows,
      Google.Cloud.Bigquery.Storage.V1.ReadRowsRequest,
      stream(Google.Cloud.Bigquery.Storage.V1.ReadRowsResponse)

  rpc :SplitReadStream,
      Google.Cloud.Bigquery.Storage.V1.SplitReadStreamRequest,
      Google.Cloud.Bigquery.Storage.V1.SplitReadStreamResponse
end

defmodule Google.Cloud.Bigquery.Storage.V1.BigQueryRead.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Storage.V1.BigQueryRead.Service
end

defmodule Google.Cloud.Bigquery.Storage.V1.BigQueryWrite.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.storage.v1.BigQueryWrite"

  rpc :CreateWriteStream,
      Google.Cloud.Bigquery.Storage.V1.CreateWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1.WriteStream

  rpc :AppendRows,
      stream(Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest),
      stream(Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse)

  rpc :GetWriteStream,
      Google.Cloud.Bigquery.Storage.V1.GetWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1.WriteStream

  rpc :FinalizeWriteStream,
      Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamResponse

  rpc :BatchCommitWriteStreams,
      Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsRequest,
      Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsResponse

  rpc :FlushRows,
      Google.Cloud.Bigquery.Storage.V1.FlushRowsRequest,
      Google.Cloud.Bigquery.Storage.V1.FlushRowsResponse
end

defmodule Google.Cloud.Bigquery.Storage.V1.BigQueryWrite.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Storage.V1.BigQueryWrite.Service
end

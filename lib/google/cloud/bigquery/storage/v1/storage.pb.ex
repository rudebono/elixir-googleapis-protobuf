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
          | :OFFSET_ALREADY_EXISTS
          | :OFFSET_OUT_OF_RANGE

  field :STORAGE_ERROR_CODE_UNSPECIFIED, 0
  field :TABLE_NOT_FOUND, 1
  field :STREAM_ALREADY_COMMITTED, 2
  field :STREAM_NOT_FOUND, 3
  field :INVALID_STREAM_TYPE, 4
  field :INVALID_STREAM_STATE, 5
  field :STREAM_FINALIZED, 6
  field :SCHEMA_MISMATCH_EXTRA_FIELDS, 7
  field :OFFSET_ALREADY_EXISTS, 8
  field :OFFSET_OUT_OF_RANGE, 9
end
defmodule Google.Cloud.Bigquery.Storage.V1.CreateReadSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_session: Google.Cloud.Bigquery.Storage.V1.ReadSession.t() | nil,
          max_stream_count: integer
        }

  defstruct parent: "",
            read_session: nil,
            max_stream_count: 0

  field :parent, 1, type: :string, deprecated: false

  field :read_session, 2,
    type: Google.Cloud.Bigquery.Storage.V1.ReadSession,
    json_name: "readSession",
    deprecated: false

  field :max_stream_count, 3, type: :int32, json_name: "maxStreamCount"
end
defmodule Google.Cloud.Bigquery.Storage.V1.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_stream: String.t(),
          offset: integer
        }

  defstruct read_stream: "",
            offset: 0

  field :read_stream, 1, type: :string, json_name: "readStream", deprecated: false
  field :offset, 2, type: :int64
end
defmodule Google.Cloud.Bigquery.Storage.V1.ThrottleState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throttle_percent: integer
        }

  defstruct throttle_percent: 0

  field :throttle_percent, 1, type: :int32, json_name: "throttlePercent"
end
defmodule Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at_response_start: float | :infinity | :negative_infinity | :nan,
          at_response_end: float | :infinity | :negative_infinity | :nan
        }

  defstruct at_response_start: 0.0,
            at_response_end: 0.0

  field :at_response_start, 1, type: :double, json_name: "atResponseStart"
  field :at_response_end, 2, type: :double, json_name: "atResponseEnd"
end
defmodule Google.Cloud.Bigquery.Storage.V1.StreamStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress: Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress.t() | nil
        }

  defstruct progress: nil

  field :progress, 2, type: Google.Cloud.Bigquery.Storage.V1.StreamStats.Progress
end
defmodule Google.Cloud.Bigquery.Storage.V1.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows:
            {:avro_rows, Google.Cloud.Bigquery.Storage.V1.AvroRows.t() | nil}
            | {:arrow_record_batch, Google.Cloud.Bigquery.Storage.V1.ArrowRecordBatch.t() | nil},
          schema:
            {:avro_schema, Google.Cloud.Bigquery.Storage.V1.AvroSchema.t() | nil}
            | {:arrow_schema, Google.Cloud.Bigquery.Storage.V1.ArrowSchema.t() | nil},
          row_count: integer,
          stats: Google.Cloud.Bigquery.Storage.V1.StreamStats.t() | nil,
          throttle_state: Google.Cloud.Bigquery.Storage.V1.ThrottleState.t() | nil
        }

  defstruct rows: nil,
            schema: nil,
            row_count: 0,
            stats: nil,
            throttle_state: nil

  oneof :rows, 0
  oneof :schema, 1

  field :avro_rows, 3,
    type: Google.Cloud.Bigquery.Storage.V1.AvroRows,
    json_name: "avroRows",
    oneof: 0

  field :arrow_record_batch, 4,
    type: Google.Cloud.Bigquery.Storage.V1.ArrowRecordBatch,
    json_name: "arrowRecordBatch",
    oneof: 0

  field :row_count, 6, type: :int64, json_name: "rowCount"
  field :stats, 2, type: Google.Cloud.Bigquery.Storage.V1.StreamStats

  field :throttle_state, 5,
    type: Google.Cloud.Bigquery.Storage.V1.ThrottleState,
    json_name: "throttleState"

  field :avro_schema, 7,
    type: Google.Cloud.Bigquery.Storage.V1.AvroSchema,
    json_name: "avroSchema",
    oneof: 1,
    deprecated: false

  field :arrow_schema, 8,
    type: Google.Cloud.Bigquery.Storage.V1.ArrowSchema,
    json_name: "arrowSchema",
    oneof: 1,
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1.SplitReadStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct name: "",
            fraction: 0.0

  field :name, 1, type: :string, deprecated: false
  field :fraction, 2, type: :double
end
defmodule Google.Cloud.Bigquery.Storage.V1.SplitReadStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_stream: Google.Cloud.Bigquery.Storage.V1.ReadStream.t() | nil,
          remainder_stream: Google.Cloud.Bigquery.Storage.V1.ReadStream.t() | nil
        }

  defstruct primary_stream: nil,
            remainder_stream: nil

  field :primary_stream, 1,
    type: Google.Cloud.Bigquery.Storage.V1.ReadStream,
    json_name: "primaryStream"

  field :remainder_stream, 2,
    type: Google.Cloud.Bigquery.Storage.V1.ReadStream,
    json_name: "remainderStream"
end
defmodule Google.Cloud.Bigquery.Storage.V1.CreateWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_stream: Google.Cloud.Bigquery.Storage.V1.WriteStream.t() | nil
        }

  defstruct parent: "",
            write_stream: nil

  field :parent, 1, type: :string, deprecated: false

  field :write_stream, 2,
    type: Google.Cloud.Bigquery.Storage.V1.WriteStream,
    json_name: "writeStream",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest.ProtoData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          writer_schema: Google.Cloud.Bigquery.Storage.V1.ProtoSchema.t() | nil,
          rows: Google.Cloud.Bigquery.Storage.V1.ProtoRows.t() | nil
        }

  defstruct writer_schema: nil,
            rows: nil

  field :writer_schema, 1,
    type: Google.Cloud.Bigquery.Storage.V1.ProtoSchema,
    json_name: "writerSchema"

  field :rows, 2, type: Google.Cloud.Bigquery.Storage.V1.ProtoRows
end
defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows:
            {:proto_rows, Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest.ProtoData.t() | nil},
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil,
          trace_id: String.t()
        }

  defstruct rows: nil,
            write_stream: "",
            offset: nil,
            trace_id: ""

  oneof :rows, 0

  field :write_stream, 1, type: :string, json_name: "writeStream", deprecated: false
  field :offset, 2, type: Google.Protobuf.Int64Value

  field :proto_rows, 4,
    type: Google.Cloud.Bigquery.Storage.V1.AppendRowsRequest.ProtoData,
    json_name: "protoRows",
    oneof: 0

  field :trace_id, 6, type: :string, json_name: "traceId"
end
defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse.AppendResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct offset: nil

  field :offset, 1, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:append_result,
             Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse.AppendResult.t() | nil}
            | {:error, Google.Rpc.Status.t() | nil},
          updated_schema: Google.Cloud.Bigquery.Storage.V1.TableSchema.t() | nil
        }

  defstruct response: nil,
            updated_schema: nil

  oneof :response, 0

  field :append_result, 1,
    type: Google.Cloud.Bigquery.Storage.V1.AppendRowsResponse.AppendResult,
    json_name: "appendResult",
    oneof: 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0

  field :updated_schema, 3,
    type: Google.Cloud.Bigquery.Storage.V1.TableSchema,
    json_name: "updatedSchema"
end
defmodule Google.Cloud.Bigquery.Storage.V1.GetWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_streams: [String.t()]
        }

  defstruct parent: "",
            write_streams: []

  field :parent, 1, type: :string, deprecated: false

  field :write_streams, 2,
    repeated: true,
    type: :string,
    json_name: "writeStreams",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1.BatchCommitWriteStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commit_time: Google.Protobuf.Timestamp.t() | nil,
          stream_errors: [Google.Cloud.Bigquery.Storage.V1.StorageError.t()]
        }

  defstruct commit_time: nil,
            stream_errors: []

  field :commit_time, 1, type: Google.Protobuf.Timestamp, json_name: "commitTime"

  field :stream_errors, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Storage.V1.StorageError,
    json_name: "streamErrors"
end
defmodule Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1.FinalizeWriteStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_count: integer
        }

  defstruct row_count: 0

  field :row_count, 1, type: :int64, json_name: "rowCount"
end
defmodule Google.Cloud.Bigquery.Storage.V1.FlushRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct write_stream: "",
            offset: nil

  field :write_stream, 1, type: :string, json_name: "writeStream", deprecated: false
  field :offset, 2, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.Storage.V1.FlushRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer
        }

  defstruct offset: 0

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

  defstruct code: :STORAGE_ERROR_CODE_UNSPECIFIED,
            entity: "",
            error_message: ""

  field :code, 1, type: Google.Cloud.Bigquery.Storage.V1.StorageError.StorageErrorCode, enum: true
  field :entity, 2, type: :string
  field :error_message, 3, type: :string, json_name: "errorMessage"
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

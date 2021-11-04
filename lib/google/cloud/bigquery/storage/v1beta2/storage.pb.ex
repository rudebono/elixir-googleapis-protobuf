defmodule Google.Cloud.Bigquery.Storage.V1beta2.StorageError.StorageErrorCode do
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

  field :STORAGE_ERROR_CODE_UNSPECIFIED, 0
  field :TABLE_NOT_FOUND, 1
  field :STREAM_ALREADY_COMMITTED, 2
  field :STREAM_NOT_FOUND, 3
  field :INVALID_STREAM_TYPE, 4
  field :INVALID_STREAM_STATE, 5
  field :STREAM_FINALIZED, 6
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.CreateReadSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_session: Google.Cloud.Bigquery.Storage.V1beta2.ReadSession.t() | nil,
          max_stream_count: integer
        }

  defstruct [:parent, :read_session, :max_stream_count]

  field :parent, 1, type: :string

  field :read_session, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ReadSession,
    json_name: "readSession"

  field :max_stream_count, 3, type: :int32, json_name: "maxStreamCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_stream: String.t(),
          offset: integer
        }

  defstruct [:read_stream, :offset]

  field :read_stream, 1, type: :string, json_name: "readStream"
  field :offset, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ThrottleState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throttle_percent: integer
        }

  defstruct [:throttle_percent]

  field :throttle_percent, 1, type: :int32, json_name: "throttlePercent"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.StreamStats.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at_response_start: float | :infinity | :negative_infinity | :nan,
          at_response_end: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:at_response_start, :at_response_end]

  field :at_response_start, 1, type: :double, json_name: "atResponseStart"
  field :at_response_end, 2, type: :double, json_name: "atResponseEnd"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.StreamStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress: Google.Cloud.Bigquery.Storage.V1beta2.StreamStats.Progress.t() | nil
        }

  defstruct [:progress]

  field :progress, 2, type: Google.Cloud.Bigquery.Storage.V1beta2.StreamStats.Progress

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows:
            {:avro_rows, Google.Cloud.Bigquery.Storage.V1beta2.AvroRows.t() | nil}
            | {:arrow_record_batch,
               Google.Cloud.Bigquery.Storage.V1beta2.ArrowRecordBatch.t() | nil},
          schema:
            {:avro_schema, Google.Cloud.Bigquery.Storage.V1beta2.AvroSchema.t() | nil}
            | {:arrow_schema, Google.Cloud.Bigquery.Storage.V1beta2.ArrowSchema.t() | nil},
          row_count: integer,
          stats: Google.Cloud.Bigquery.Storage.V1beta2.StreamStats.t() | nil,
          throttle_state: Google.Cloud.Bigquery.Storage.V1beta2.ThrottleState.t() | nil
        }

  defstruct [:rows, :schema, :row_count, :stats, :throttle_state]

  oneof :rows, 0
  oneof :schema, 1

  field :avro_rows, 3,
    type: Google.Cloud.Bigquery.Storage.V1beta2.AvroRows,
    json_name: "avroRows",
    oneof: 0

  field :arrow_record_batch, 4,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ArrowRecordBatch,
    json_name: "arrowRecordBatch",
    oneof: 0

  field :row_count, 6, type: :int64, json_name: "rowCount"
  field :stats, 2, type: Google.Cloud.Bigquery.Storage.V1beta2.StreamStats

  field :throttle_state, 5,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ThrottleState,
    json_name: "throttleState"

  field :avro_schema, 7,
    type: Google.Cloud.Bigquery.Storage.V1beta2.AvroSchema,
    json_name: "avroSchema",
    oneof: 1

  field :arrow_schema, 8,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ArrowSchema,
    json_name: "arrowSchema",
    oneof: 1

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.SplitReadStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :fraction]

  field :name, 1, type: :string
  field :fraction, 2, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.SplitReadStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_stream: Google.Cloud.Bigquery.Storage.V1beta2.ReadStream.t() | nil,
          remainder_stream: Google.Cloud.Bigquery.Storage.V1beta2.ReadStream.t() | nil
        }

  defstruct [:primary_stream, :remainder_stream]

  field :primary_stream, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ReadStream,
    json_name: "primaryStream"

  field :remainder_stream, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ReadStream,
    json_name: "remainderStream"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.CreateWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_stream: Google.Cloud.Bigquery.Storage.V1beta2.WriteStream.t() | nil
        }

  defstruct [:parent, :write_stream]

  field :parent, 1, type: :string

  field :write_stream, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta2.WriteStream,
    json_name: "writeStream"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsRequest.ProtoData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          writer_schema: Google.Cloud.Bigquery.Storage.V1beta2.ProtoSchema.t() | nil,
          rows: Google.Cloud.Bigquery.Storage.V1beta2.ProtoRows.t() | nil
        }

  defstruct [:writer_schema, :rows]

  field :writer_schema, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.ProtoSchema,
    json_name: "writerSchema"

  field :rows, 2, type: Google.Cloud.Bigquery.Storage.V1beta2.ProtoRows

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows:
            {:proto_rows,
             Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsRequest.ProtoData.t() | nil},
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil,
          trace_id: String.t()
        }

  defstruct [:rows, :write_stream, :offset, :trace_id]

  oneof :rows, 0

  field :write_stream, 1, type: :string, json_name: "writeStream"
  field :offset, 2, type: Google.Protobuf.Int64Value

  field :proto_rows, 4,
    type: Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsRequest.ProtoData,
    json_name: "protoRows",
    oneof: 0

  field :trace_id, 6, type: :string, json_name: "traceId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsResponse.AppendResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:offset]

  field :offset, 1, type: Google.Protobuf.Int64Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:append_result,
             Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsResponse.AppendResult.t() | nil}
            | {:error, Google.Rpc.Status.t() | nil},
          updated_schema: Google.Cloud.Bigquery.Storage.V1beta2.TableSchema.t() | nil
        }

  defstruct [:response, :updated_schema]

  oneof :response, 0

  field :append_result, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsResponse.AppendResult,
    json_name: "appendResult",
    oneof: 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0

  field :updated_schema, 3,
    type: Google.Cloud.Bigquery.Storage.V1beta2.TableSchema,
    json_name: "updatedSchema"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.GetWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BatchCommitWriteStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          write_streams: [String.t()]
        }

  defstruct [:parent, :write_streams]

  field :parent, 1, type: :string
  field :write_streams, 2, repeated: true, type: :string, json_name: "writeStreams"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BatchCommitWriteStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commit_time: Google.Protobuf.Timestamp.t() | nil,
          stream_errors: [Google.Cloud.Bigquery.Storage.V1beta2.StorageError.t()]
        }

  defstruct [:commit_time, :stream_errors]

  field :commit_time, 1, type: Google.Protobuf.Timestamp, json_name: "commitTime"

  field :stream_errors, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Storage.V1beta2.StorageError,
    json_name: "streamErrors"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.FinalizeWriteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.FinalizeWriteStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_count: integer
        }

  defstruct [:row_count]

  field :row_count, 1, type: :int64, json_name: "rowCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.FlushRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_stream: String.t(),
          offset: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:write_stream, :offset]

  field :write_stream, 1, type: :string, json_name: "writeStream"
  field :offset, 2, type: Google.Protobuf.Int64Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.FlushRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer
        }

  defstruct [:offset]

  field :offset, 1, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.StorageError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Bigquery.Storage.V1beta2.StorageError.StorageErrorCode.t(),
          entity: String.t(),
          error_message: String.t()
        }

  defstruct [:code, :entity, :error_message]

  field :code, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta2.StorageError.StorageErrorCode,
    enum: true

  field :entity, 2, type: :string
  field :error_message, 3, type: :string, json_name: "errorMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BigQueryRead.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.storage.v1beta2.BigQueryRead"

  rpc :CreateReadSession,
      Google.Cloud.Bigquery.Storage.V1beta2.CreateReadSessionRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.ReadSession

  rpc :ReadRows,
      Google.Cloud.Bigquery.Storage.V1beta2.ReadRowsRequest,
      stream(Google.Cloud.Bigquery.Storage.V1beta2.ReadRowsResponse)

  rpc :SplitReadStream,
      Google.Cloud.Bigquery.Storage.V1beta2.SplitReadStreamRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.SplitReadStreamResponse
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BigQueryRead.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Storage.V1beta2.BigQueryRead.Service
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BigQueryWrite.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.storage.v1beta2.BigQueryWrite"

  rpc :CreateWriteStream,
      Google.Cloud.Bigquery.Storage.V1beta2.CreateWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.WriteStream

  rpc :AppendRows,
      stream(Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsRequest),
      stream(Google.Cloud.Bigquery.Storage.V1beta2.AppendRowsResponse)

  rpc :GetWriteStream,
      Google.Cloud.Bigquery.Storage.V1beta2.GetWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.WriteStream

  rpc :FinalizeWriteStream,
      Google.Cloud.Bigquery.Storage.V1beta2.FinalizeWriteStreamRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.FinalizeWriteStreamResponse

  rpc :BatchCommitWriteStreams,
      Google.Cloud.Bigquery.Storage.V1beta2.BatchCommitWriteStreamsRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.BatchCommitWriteStreamsResponse

  rpc :FlushRows,
      Google.Cloud.Bigquery.Storage.V1beta2.FlushRowsRequest,
      Google.Cloud.Bigquery.Storage.V1beta2.FlushRowsResponse
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.BigQueryWrite.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Storage.V1beta2.BigQueryWrite.Service
end

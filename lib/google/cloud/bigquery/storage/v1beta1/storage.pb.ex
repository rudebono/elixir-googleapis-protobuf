defmodule Google.Cloud.Bigquery.Storage.V1beta1.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATA_FORMAT_UNSPECIFIED | :AVRO | :ARROW

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :AVRO, 1
  field :ARROW, 3
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SHARDING_STRATEGY_UNSPECIFIED | :LIQUID | :BALANCED

  field :SHARDING_STRATEGY_UNSPECIFIED, 0
  field :LIQUID, 1
  field :BALANCED, 2
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.Stream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          offset: integer
        }

  defstruct stream: nil,
            offset: 0

  field :stream, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
  field :offset, 2, type: :int64
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema:
            {:avro_schema, Google.Cloud.Bigquery.Storage.V1beta1.AvroSchema.t() | nil}
            | {:arrow_schema, Google.Cloud.Bigquery.Storage.V1beta1.ArrowSchema.t() | nil},
          name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          streams: [Google.Cloud.Bigquery.Storage.V1beta1.Stream.t()],
          table_reference: Google.Cloud.Bigquery.Storage.V1beta1.TableReference.t() | nil,
          table_modifiers: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers.t() | nil,
          sharding_strategy: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy.t()
        }

  defstruct schema: nil,
            name: "",
            expire_time: nil,
            streams: [],
            table_reference: nil,
            table_modifiers: nil,
            sharding_strategy: :SHARDING_STRATEGY_UNSPECIFIED

  oneof :schema, 0

  field :name, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  field :avro_schema, 5,
    type: Google.Cloud.Bigquery.Storage.V1beta1.AvroSchema,
    json_name: "avroSchema",
    oneof: 0

  field :arrow_schema, 6,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ArrowSchema,
    json_name: "arrowSchema",
    oneof: 0

  field :streams, 4, repeated: true, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream

  field :table_reference, 7,
    type: Google.Cloud.Bigquery.Storage.V1beta1.TableReference,
    json_name: "tableReference"

  field :table_modifiers, 8,
    type: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers,
    json_name: "tableModifiers"

  field :sharding_strategy, 9,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy,
    json_name: "shardingStrategy",
    enum: true
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.CreateReadSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_reference: Google.Cloud.Bigquery.Storage.V1beta1.TableReference.t() | nil,
          parent: String.t(),
          table_modifiers: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers.t() | nil,
          requested_streams: integer,
          read_options: Google.Cloud.Bigquery.Storage.V1beta1.TableReadOptions.t() | nil,
          format: Google.Cloud.Bigquery.Storage.V1beta1.DataFormat.t(),
          sharding_strategy: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy.t()
        }

  defstruct table_reference: nil,
            parent: "",
            table_modifiers: nil,
            requested_streams: 0,
            read_options: nil,
            format: :DATA_FORMAT_UNSPECIFIED,
            sharding_strategy: :SHARDING_STRATEGY_UNSPECIFIED

  field :table_reference, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta1.TableReference,
    json_name: "tableReference",
    deprecated: false

  field :parent, 6, type: :string, deprecated: false

  field :table_modifiers, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers,
    json_name: "tableModifiers"

  field :requested_streams, 3, type: :int32, json_name: "requestedStreams"

  field :read_options, 4,
    type: Google.Cloud.Bigquery.Storage.V1beta1.TableReadOptions,
    json_name: "readOptions"

  field :format, 5, type: Google.Cloud.Bigquery.Storage.V1beta1.DataFormat, enum: true

  field :sharding_strategy, 7,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy,
    json_name: "shardingStrategy",
    enum: true
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_position: Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition.t() | nil
        }

  defstruct read_position: nil

  field :read_position, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition,
    json_name: "readPosition",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.StreamStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          estimated_row_count: integer,
          fraction_consumed: float | :infinity | :negative_infinity | :nan,
          progress: Google.Cloud.Bigquery.Storage.V1beta1.Progress.t() | nil,
          is_splittable: boolean
        }

  defstruct estimated_row_count: 0,
            fraction_consumed: 0.0,
            progress: nil,
            is_splittable: false

  field :estimated_row_count, 1, type: :int64, json_name: "estimatedRowCount"
  field :fraction_consumed, 2, type: :float, json_name: "fractionConsumed"
  field :progress, 4, type: Google.Cloud.Bigquery.Storage.V1beta1.Progress
  field :is_splittable, 3, type: :bool, json_name: "isSplittable"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at_response_start: float | :infinity | :negative_infinity | :nan,
          at_response_end: float | :infinity | :negative_infinity | :nan
        }

  defstruct at_response_start: 0.0,
            at_response_end: 0.0

  field :at_response_start, 1, type: :float, json_name: "atResponseStart"
  field :at_response_end, 2, type: :float, json_name: "atResponseEnd"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throttle_percent: integer
        }

  defstruct throttle_percent: 0

  field :throttle_percent, 1, type: :int32, json_name: "throttlePercent"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows:
            {:avro_rows, Google.Cloud.Bigquery.Storage.V1beta1.AvroRows.t() | nil}
            | {:arrow_record_batch,
               Google.Cloud.Bigquery.Storage.V1beta1.ArrowRecordBatch.t() | nil},
          row_count: integer,
          status: Google.Cloud.Bigquery.Storage.V1beta1.StreamStatus.t() | nil,
          throttle_status: Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus.t() | nil
        }

  defstruct rows: nil,
            row_count: 0,
            status: nil,
            throttle_status: nil

  oneof :rows, 0

  field :avro_rows, 3,
    type: Google.Cloud.Bigquery.Storage.V1beta1.AvroRows,
    json_name: "avroRows",
    oneof: 0

  field :arrow_record_batch, 4,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ArrowRecordBatch,
    json_name: "arrowRecordBatch",
    oneof: 0

  field :row_count, 6, type: :int64, json_name: "rowCount"
  field :status, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.StreamStatus

  field :throttle_status, 5,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus,
    json_name: "throttleStatus"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: Google.Cloud.Bigquery.Storage.V1beta1.ReadSession.t() | nil,
          requested_streams: integer
        }

  defstruct session: nil,
            requested_streams: 0

  field :session, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.ReadSession, deprecated: false
  field :requested_streams, 2, type: :int32, json_name: "requestedStreams", deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streams: [Google.Cloud.Bigquery.Storage.V1beta1.Stream.t()]
        }

  defstruct streams: []

  field :streams, 1, repeated: true, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.FinalizeStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil
        }

  defstruct stream: nil

  field :stream, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream, deprecated: false
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct original_stream: nil,
            fraction: 0.0

  field :original_stream, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta1.Stream,
    json_name: "originalStream",
    deprecated: false

  field :fraction, 2, type: :float
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          remainder_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil
        }

  defstruct primary_stream: nil,
            remainder_stream: nil

  field :primary_stream, 1,
    type: Google.Cloud.Bigquery.Storage.V1beta1.Stream,
    json_name: "primaryStream"

  field :remainder_stream, 2,
    type: Google.Cloud.Bigquery.Storage.V1beta1.Stream,
    json_name: "remainderStream"
end
defmodule Google.Cloud.Bigquery.Storage.V1beta1.BigQueryStorage.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.storage.v1beta1.BigQueryStorage"

  rpc :CreateReadSession,
      Google.Cloud.Bigquery.Storage.V1beta1.CreateReadSessionRequest,
      Google.Cloud.Bigquery.Storage.V1beta1.ReadSession

  rpc :ReadRows,
      Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsRequest,
      stream(Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsResponse)

  rpc :BatchCreateReadSessionStreams,
      Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsRequest,
      Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsResponse

  rpc :FinalizeStream,
      Google.Cloud.Bigquery.Storage.V1beta1.FinalizeStreamRequest,
      Google.Protobuf.Empty

  rpc :SplitReadStream,
      Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamRequest,
      Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamResponse
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.BigQueryStorage.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Storage.V1beta1.BigQueryStorage.Service
end

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

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          offset: integer
        }

  defstruct [:stream, :offset]

  field :stream, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
  field :offset, 2, type: :int64
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: {atom, any},
          name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          streams: [Google.Cloud.Bigquery.Storage.V1beta1.Stream.t()],
          table_reference: Google.Cloud.Bigquery.Storage.V1beta1.TableReference.t() | nil,
          table_modifiers: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers.t() | nil,
          sharding_strategy: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy.t()
        }

  defstruct [
    :schema,
    :name,
    :expire_time,
    :streams,
    :table_reference,
    :table_modifiers,
    :sharding_strategy
  ]

  oneof :schema, 0
  field :name, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp
  field :avro_schema, 5, type: Google.Cloud.Bigquery.Storage.V1beta1.AvroSchema, oneof: 0
  field :arrow_schema, 6, type: Google.Cloud.Bigquery.Storage.V1beta1.ArrowSchema, oneof: 0
  field :streams, 4, repeated: true, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
  field :table_reference, 7, type: Google.Cloud.Bigquery.Storage.V1beta1.TableReference
  field :table_modifiers, 8, type: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers

  field :sharding_strategy, 9,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy,
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

  defstruct [
    :table_reference,
    :parent,
    :table_modifiers,
    :requested_streams,
    :read_options,
    :format,
    :sharding_strategy
  ]

  field :table_reference, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.TableReference
  field :parent, 6, type: :string
  field :table_modifiers, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.TableModifiers
  field :requested_streams, 3, type: :int32
  field :read_options, 4, type: Google.Cloud.Bigquery.Storage.V1beta1.TableReadOptions
  field :format, 5, type: Google.Cloud.Bigquery.Storage.V1beta1.DataFormat, enum: true

  field :sharding_strategy, 7,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ShardingStrategy,
    enum: true
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_position: Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition.t() | nil
        }

  defstruct [:read_position]

  field :read_position, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.StreamPosition
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

  defstruct [:estimated_row_count, :fraction_consumed, :progress, :is_splittable]

  field :estimated_row_count, 1, type: :int64
  field :fraction_consumed, 2, type: :float
  field :progress, 4, type: Google.Cloud.Bigquery.Storage.V1beta1.Progress
  field :is_splittable, 3, type: :bool
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at_response_start: float | :infinity | :negative_infinity | :nan,
          at_response_end: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:at_response_start, :at_response_end]

  field :at_response_start, 1, type: :float
  field :at_response_end, 2, type: :float
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throttle_percent: integer
        }

  defstruct [:throttle_percent]

  field :throttle_percent, 1, type: :int32
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.ReadRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: {atom, any},
          row_count: integer,
          status: Google.Cloud.Bigquery.Storage.V1beta1.StreamStatus.t() | nil,
          throttle_status: Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus.t() | nil
        }

  defstruct [:rows, :row_count, :status, :throttle_status]

  oneof :rows, 0
  field :avro_rows, 3, type: Google.Cloud.Bigquery.Storage.V1beta1.AvroRows, oneof: 0

  field :arrow_record_batch, 4,
    type: Google.Cloud.Bigquery.Storage.V1beta1.ArrowRecordBatch,
    oneof: 0

  field :row_count, 6, type: :int64
  field :status, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.StreamStatus
  field :throttle_status, 5, type: Google.Cloud.Bigquery.Storage.V1beta1.ThrottleStatus
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: Google.Cloud.Bigquery.Storage.V1beta1.ReadSession.t() | nil,
          requested_streams: integer
        }

  defstruct [:session, :requested_streams]

  field :session, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.ReadSession
  field :requested_streams, 2, type: :int32
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.BatchCreateReadSessionStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streams: [Google.Cloud.Bigquery.Storage.V1beta1.Stream.t()]
        }

  defstruct [:streams]

  field :streams, 1, repeated: true, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.FinalizeStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil
        }

  defstruct [:stream]

  field :stream, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:original_stream, :fraction]

  field :original_stream, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
  field :fraction, 2, type: :float
end

defmodule Google.Cloud.Bigquery.Storage.V1beta1.SplitReadStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil,
          remainder_stream: Google.Cloud.Bigquery.Storage.V1beta1.Stream.t() | nil
        }

  defstruct [:primary_stream, :remainder_stream]

  field :primary_stream, 1, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
  field :remainder_stream, 2, type: Google.Cloud.Bigquery.Storage.V1beta1.Stream
end

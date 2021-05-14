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

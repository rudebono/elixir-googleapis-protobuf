defmodule Google.Cloud.Bigquery.Storage.V1.ArrowSerializationOptions.CompressionCodec do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPRESSION_UNSPECIFIED | :LZ4_FRAME

  field :COMPRESSION_UNSPECIFIED, 0

  field :LZ4_FRAME, 1
end

defmodule Google.Cloud.Bigquery.Storage.V1.ArrowSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_schema: binary
        }

  defstruct [:serialized_schema]

  field :serialized_schema, 1, type: :bytes
end

defmodule Google.Cloud.Bigquery.Storage.V1.ArrowRecordBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_record_batch: binary,
          row_count: integer
        }

  defstruct [:serialized_record_batch, :row_count]

  field :serialized_record_batch, 1, type: :bytes
  field :row_count, 2, type: :int64
end

defmodule Google.Cloud.Bigquery.Storage.V1.ArrowSerializationOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buffer_compression:
            Google.Cloud.Bigquery.Storage.V1.ArrowSerializationOptions.CompressionCodec.t()
        }

  defstruct [:buffer_compression]

  field :buffer_compression, 2,
    type: Google.Cloud.Bigquery.Storage.V1.ArrowSerializationOptions.CompressionCodec,
    enum: true
end

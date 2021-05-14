defmodule Google.Cloud.Bigquery.Storage.V1.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_FORMAT_UNSPECIFIED | :AVRO | :ARROW

  field :DATA_FORMAT_UNSPECIFIED, 0

  field :AVRO, 1

  field :ARROW, 2
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadSession.TableModifiers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:snapshot_time]

  field :snapshot_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadSession.TableReadOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_format_serialization_options: {atom, any},
          selected_fields: [String.t()],
          row_restriction: String.t()
        }

  defstruct [:output_format_serialization_options, :selected_fields, :row_restriction]

  oneof :output_format_serialization_options, 0
  field :selected_fields, 1, repeated: true, type: :string
  field :row_restriction, 2, type: :string

  field :arrow_serialization_options, 3,
    type: Google.Cloud.Bigquery.Storage.V1.ArrowSerializationOptions,
    oneof: 0
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: {atom, any},
          name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          data_format: Google.Cloud.Bigquery.Storage.V1.DataFormat.t(),
          table: String.t(),
          table_modifiers: Google.Cloud.Bigquery.Storage.V1.ReadSession.TableModifiers.t() | nil,
          read_options: Google.Cloud.Bigquery.Storage.V1.ReadSession.TableReadOptions.t() | nil,
          streams: [Google.Cloud.Bigquery.Storage.V1.ReadStream.t()]
        }

  defstruct [
    :schema,
    :name,
    :expire_time,
    :data_format,
    :table,
    :table_modifiers,
    :read_options,
    :streams
  ]

  oneof :schema, 0
  field :name, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp
  field :data_format, 3, type: Google.Cloud.Bigquery.Storage.V1.DataFormat, enum: true
  field :avro_schema, 4, type: Google.Cloud.Bigquery.Storage.V1.AvroSchema, oneof: 0
  field :arrow_schema, 5, type: Google.Cloud.Bigquery.Storage.V1.ArrowSchema, oneof: 0
  field :table, 6, type: :string
  field :table_modifiers, 7, type: Google.Cloud.Bigquery.Storage.V1.ReadSession.TableModifiers
  field :read_options, 8, type: Google.Cloud.Bigquery.Storage.V1.ReadSession.TableReadOptions
  field :streams, 10, repeated: true, type: Google.Cloud.Bigquery.Storage.V1.ReadStream
end

defmodule Google.Cloud.Bigquery.Storage.V1.ReadStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

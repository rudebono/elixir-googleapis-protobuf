defmodule Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :STRING
          | :INT64
          | :DOUBLE
          | :STRUCT
          | :BYTES
          | :BOOL
          | :TIMESTAMP
          | :DATE
          | :TIME
          | :DATETIME
          | :GEOGRAPHY
          | :NUMERIC
          | :BIGNUMERIC
          | :INTERVAL
          | :JSON

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT64, 2
  field :DOUBLE, 3
  field :STRUCT, 4
  field :BYTES, 5
  field :BOOL, 6
  field :TIMESTAMP, 7
  field :DATE, 8
  field :TIME, 9
  field :DATETIME, 10
  field :GEOGRAPHY, 11
  field :NUMERIC, 12
  field :BIGNUMERIC, 13
  field :INTERVAL, 14
  field :JSON, 15
end

defmodule Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODE_UNSPECIFIED | :NULLABLE | :REQUIRED | :REPEATED

  field :MODE_UNSPECIFIED, 0
  field :NULLABLE, 1
  field :REQUIRED, 2
  field :REPEATED, 3
end

defmodule Google.Cloud.Bigquery.Storage.V1.TableSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: [Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.t()]
        }

  defstruct [:fields]

  field :fields, 1, repeated: true, type: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1.TableFieldSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Type.t(),
          mode: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Mode.t(),
          fields: [Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.t()],
          description: String.t(),
          max_length: integer,
          precision: integer,
          scale: integer
        }

  defstruct [:name, :type, :mode, :fields, :description, :max_length, :precision, :scale]

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Type, enum: true
  field :mode, 3, type: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema.Mode, enum: true
  field :fields, 4, repeated: true, type: Google.Cloud.Bigquery.Storage.V1.TableFieldSchema
  field :description, 6, type: :string
  field :max_length, 7, type: :int64, json_name: "maxLength"
  field :precision, 8, type: :int64
  field :scale, 9, type: :int64

  def transform_module(), do: nil
end

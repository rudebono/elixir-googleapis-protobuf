defmodule Google.Cloud.Bigquery.Storage.V1.AvroSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: String.t()
        }

  defstruct schema: ""

  field :schema, 1, type: :string
end
defmodule Google.Cloud.Bigquery.Storage.V1.AvroRows do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_binary_rows: binary,
          row_count: integer
        }

  defstruct serialized_binary_rows: "",
            row_count: 0

  field :serialized_binary_rows, 1, type: :bytes, json_name: "serializedBinaryRows"
  field :row_count, 2, type: :int64, json_name: "rowCount"
end

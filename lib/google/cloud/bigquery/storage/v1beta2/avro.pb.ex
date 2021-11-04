defmodule Google.Cloud.Bigquery.Storage.V1beta2.AvroSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: String.t()
        }

  defstruct [:schema]

  field :schema, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Storage.V1beta2.AvroRows do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_binary_rows: binary
        }

  defstruct [:serialized_binary_rows]

  field :serialized_binary_rows, 1, type: :bytes, json_name: "serializedBinaryRows"

  def transform_module(), do: nil
end

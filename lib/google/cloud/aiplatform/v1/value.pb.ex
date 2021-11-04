defmodule Google.Cloud.Aiplatform.V1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:int_value, integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:string_value, String.t()}
        }

  defstruct [:value]

  oneof :value, 0

  field :int_value, 1, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :int_value, 1, type: :int64, oneof: 0
  field :double_value, 2, type: :double, oneof: 0
  field :string_value, 3, type: :string, oneof: 0
end

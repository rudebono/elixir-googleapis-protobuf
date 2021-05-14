defmodule Google.Api.LabelDescriptor.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STRING | :BOOL | :INT64

  field :STRING, 0

  field :BOOL, 1

  field :INT64, 2
end

defmodule Google.Api.LabelDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value_type: Google.Api.LabelDescriptor.ValueType.t(),
          description: String.t()
        }

  defstruct [:key, :value_type, :description]

  field :key, 1, type: :string
  field :value_type, 2, type: Google.Api.LabelDescriptor.ValueType, enum: true
  field :description, 3, type: :string
end

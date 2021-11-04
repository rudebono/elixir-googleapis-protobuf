defmodule Google.Cloud.Osconfig.V1.FixedOrPercent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: {:fixed, integer} | {:percent, integer}
        }

  defstruct [:mode]

  oneof :mode, 0

  field :fixed, 1, type: :int32, oneof: 0
  field :percent, 2, type: :int32, oneof: 0

  def transform_module(), do: nil
end

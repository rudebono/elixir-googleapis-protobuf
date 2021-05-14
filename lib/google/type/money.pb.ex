defmodule Google.Type.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: String.t(),
          units: integer,
          nanos: integer
        }

  defstruct [:currency_code, :units, :nanos]

  field :currency_code, 1, type: :string
  field :units, 2, type: :int64
  field :nanos, 3, type: :int32
end

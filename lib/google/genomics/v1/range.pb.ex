defmodule Google.Genomics.V1.Range do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_name: String.t(),
          start: integer,
          end: integer
        }

  defstruct [:reference_name, :start, :end]

  field :reference_name, 1, type: :string
  field :start, 2, type: :int64
  field :end, 3, type: :int64
end

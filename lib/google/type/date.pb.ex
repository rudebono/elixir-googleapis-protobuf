defmodule Google.Type.Date do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year: integer,
          month: integer,
          day: integer
        }

  defstruct year: 0,
            month: 0,
            day: 0

  field :year, 1, type: :int32
  field :month, 2, type: :int32
  field :day, 3, type: :int32
end

defmodule Google.Actions.Type.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: Google.Type.Date.t() | nil,
          end: Google.Type.Date.t() | nil
        }

  defstruct [:start, :end]

  field :start, 1, type: Google.Type.Date
  field :end, 2, type: Google.Type.Date
end

defmodule Google.Actions.Type.DateTimeRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: Google.Type.DateTime.t() | nil,
          end: Google.Type.DateTime.t() | nil
        }

  defstruct [:start, :end]

  field :start, 1, type: Google.Type.DateTime
  field :end, 2, type: Google.Type.DateTime
end
